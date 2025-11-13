.class public Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "EyeComfortPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

.field private static final BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

.field private static final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field private static final COLOR_BLIND_URI:Landroid/net/Uri;

.field private static final COLOR_LENDS_URI:Landroid/net/Uri;

.field private static final DEFAULT_OFF:I = 0x0

.field private static final DEFAULT_ON:I = 0x1

.field private static final GREY_SCALE_URI:Landroid/net/Uri;

.field private static final HIGH_CONTRAST_URI:Landroid/net/Uri;

.field private static final LOCATION_ALLOWED_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "EyeComfortPreferenceController"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;)Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blue_light_filter"

    .line 64
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    const-string v0, "blue_light_filter_type"

    .line 65
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    const-string v0, "blue_light_filter_adaptive_mode"

    .line 66
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    const-string v0, "greyscale_mode"

    .line 67
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->GREY_SCALE_URI:Landroid/net/Uri;

    const-string v0, "high_contrast"

    .line 68
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->HIGH_CONTRAST_URI:Landroid/net/Uri;

    const-string v0, "color_blind"

    .line 69
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->COLOR_BLIND_URI:Landroid/net/Uri;

    const-string v0, "color_lens_switch"

    .line 70
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->COLOR_LENDS_URI:Landroid/net/Uri;

    const-string v0, "location_providers_allowed"

    .line 71
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->LOCATION_ALLOWED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController$1;-><init>(Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private showLocationOnDialog()V
    .locals 2

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.EyeComfortLocationDialog"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x18000000

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 295
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateEyeComfortState(Landroidx/preference/Preference;)V
    .locals 6

    .line 127
    instance-of v0, p1, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_4

    .line 129
    sget v0, Lcom/android/settings/R$string;->sec_eye_comfort_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 131
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 135
    :goto_1
    move-object v5, p1

    check-cast v5, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->setEnabledAppearance(Z)V

    if-eqz v4, :cond_2

    .line 137
    const-class v4, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 143
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_eye_comfort_disable_reason:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 144
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getAvailabilityStatus()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->registerStateCode()V

    .line 101
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 103
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x5

    :goto_2
    return v2

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 227
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    .line 228
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x107e

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_eye_comfort_title:I

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 123
    sget p0, Lcom/android/settings/R$string;->menu_key_display:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 10

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_7

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blue_light_filter_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_scheduled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    const/4 v3, 0x2

    if-ne v0, v1, :cond_3

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v4, 0x474

    const-string v6, "blue_light_filter_on_time"

    invoke-static {v0, v6, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v6, 0x1a4

    const-string v8, "blue_light_filter_off_time"

    invoke-static {v0, v8, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/android/settings/R$string;->sec_data_usage_summary_preference_cycle_label:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {v9, v4, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 170
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->sec_blue_light_filter_off_time_next_day_summary_format:I

    new-array v9, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v6, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v9, v2

    invoke-virtual {v4, v5, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 171
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v6, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    :goto_2
    aput-object p0, v3, v1

    .line 167
    invoke-virtual {v0, v8, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    if-ne v0, v3, :cond_4

    .line 174
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_eye_comfort_schedule_sunset_to_sunrise:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    if-nez v0, :cond_7

    .line 176
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_eye_comfort_schedule_always_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 179
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blue_light_filter_adaptive_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    if-eqz v2, :cond_7

    .line 182
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_eye_comfort_adaptive:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    const-string p0, ""

    :goto_3
    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 4

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_TYPE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->GREY_SCALE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->HIGH_CONTRAST_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->COLOR_BLIND_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->COLOR_LENDS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->LOCATION_ALLOWED_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 203
    instance-of p0, p1, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    if-eqz p0, :cond_0

    .line 204
    check-cast p1, Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method

.method public registerStateCode()V
    .locals 10

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 242
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 246
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "greyscale_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    .line 247
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "high_contrast"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    .line 248
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "color_blind"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v1

    goto :goto_4

    :cond_4
    move v7, v2

    .line 249
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "color_lens_switch"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5

    move v2, v1

    :cond_5
    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    const-string v0, "disabled_by_ecs_dialog_location_off"

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    const-string v0, "disabled_by_ecs_toast_accessibility_grey_scale"

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_8

    const-string v0, "disabled_by_ecs_toast_accessibility_negative_color"

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_9

    const-string v0, "disabled_by_ecs_toast_accessibility_color_adjustment"

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_a

    const-string v0, "disabled_by_ecs_toast_accessibility_color_lens"

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 6

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 268
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-nez v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->showLocationOnDialog()V

    return v2

    .line 277
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checked state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v0, 0x2e

    const/16 v2, 0x107d

    if-eqz p1, :cond_3

    const-wide/16 v3, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    .line 280
    :goto_2
    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.bluelightfilter"

    const-string v4, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_4

    const/16 p1, 0x18

    goto :goto_3

    :cond_4
    const/16 p1, 0x19

    :goto_3
    const-string v2, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    .line 283
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 285
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->mPreference:Lcom/samsung/android/settings/display/preferences/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->updateEyeComfortState(Landroidx/preference/Preference;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/EyeComfortPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
