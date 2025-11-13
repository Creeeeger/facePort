.class public Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AODPreferenceController.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;


# static fields
.field private static final ACTION_AOD_SETTINGS_MAIN:Ljava/lang/String; = "com.samsung.android.app.aodservice.settings.AODSettingsMain"

.field public static final AOD_MODE_DEFAULT_END_TIME:I = 0x21c

.field public static final AOD_MODE_DEFAULT_START_TIME:I = 0x21c

.field public static final AOD_MODE_END_TIME:Ljava/lang/String; = "aod_mode_end_time"

.field public static final AOD_MODE_START_TIME:Ljava/lang/String; = "aod_mode_start_time"

.field private static final AOD_SHOW_FOR_NEW_NOTIFICATIONS:Ljava/lang/String; = "aod_show_for_new_noti"

.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field private static final KEY_ALWAYS_ON_SCREEN:Ljava/lang/String; = "always_on_screen"

.field private static final KEY_EDITOR_ALWAYS_ON_SCREEN:Ljava/lang/String; = "editor_always_on_screen"

.field private static final SETTING_KEY_AOD_HOW_TO_SHOW_TAP_TO_SHOW_DISABLED:I = 0x0

.field private static final SETTING_KEY_AOD_HOW_TO_SHOW_TAP_TO_SHOW_ENABLED:I = 0x1

.field private static final SETTING_KEY_AOD_TAP_TO_SHOW:Ljava/lang/String; = "aod_tap_to_show_mode"

.field private static final SUPPORT_TAP_TO_SHOW:Z

.field private static final TAG:Ljava/lang/String; = "com.samsung.android.settings.lockscreen.controller.AODPreferenceController"

.field private static final VALUE_DISABLED_IN_PSM:Ljava/lang/String; = "aod_err_disabled_in_psm"

.field private static final VALUE_SMART_VIEW_CONNECTED:Ljava/lang/String; = "aod_err_smart_view_connected"


# instance fields
.field private mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private final mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

.field private mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlwaysOnScreen(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHost(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSummary(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->updateSummary()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string v1, "notaptoshow"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->SUPPORT_TAP_TO_SHOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V
    .locals 3

    const-string v0, "editor_always_on_screen"

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;-><init>(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    .line 90
    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    .line 91
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 92
    new-instance p2, Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-direct {p2, p1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    .line 93
    invoke-virtual {p2, p0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setBatterySaverListener(Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;)V

    .line 94
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 8

    .line 285
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode_start_time"

    const/16 v2, 0x21c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "aod_mode_end_time"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 290
    sget-boolean v2, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->SUPPORT_TAP_TO_SHOW:Z

    .line 291
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v5, "aod_tap_to_show_mode"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 292
    :goto_0
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const-string v7, "aod_show_for_new_noti"

    invoke-static {v5, v7, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v3, v4

    :cond_1
    if-eqz v2, :cond_2

    .line 296
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->aod_tap_to_show:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 298
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->aod_show_for_new_notifications:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->aod_show_always:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eq v0, v1, :cond_4

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->useCalendar(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ~ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v0, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->useCalendar(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    return-object p0
.end method

.method private updatePreference()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    .line 230
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mHost:Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "editor_always_on_screen"

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->removePreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 252
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->updateSummary()V

    return-void
.end method

.method private updateSummary()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private useCalendar(II)Ljava/lang/String;
    .locals 2

    .line 309
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 311
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 312
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 314
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->updateSummary()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 6

    .line 112
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODBlockonSmartView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_2

    .line 121
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "aod_err_disabled_in_psm"

    .line 122
    invoke-virtual {p0, v4}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const-string v4, "aod_err_smart_view_connected"

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/settings/core/BasePreferenceController;->setStatusCode(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v4, 0x5

    if-eqz v0, :cond_4

    .line 127
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    .line 128
    :cond_5
    sget-object p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable : PowerSaving = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDisableinSmartViewMode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    if-eqz v1, :cond_7

    .line 132
    sget-object p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisableinDexMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 136
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_ambient_display"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 137
    sget-object p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "isDiabledByKnox"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_8
    return v2
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

    .line 327
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10000000

    .line 328
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "editor_always_on_screen"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSliceType()I
    .locals 0

    .line 146
    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getSliceType()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "aod_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->getAODclocksummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    if-eqz v0, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODBlockonSmartView(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSmartMirroringConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    if-eqz v0, :cond_4

    .line 167
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->aod_disable_by_powersaving_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODBlockonSmartView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->aod_disable_by_smart_view:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 171
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->aod_disable_by_screen_mirroring:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_2
    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 258
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 261
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 263
    sget-object p1, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/16 p0, 0x1130

    const/16 p1, 0x821

    .line 266
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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
    .locals 3

    .line 187
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "aod_mode"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
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

.method public onBatteryChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "always_on_screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "editor_always_on_screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "aod_mode"

    invoke-static {v0, v3, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNotAODSettingTime(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->aod_not_support_time_toast:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->updateSummary()V

    const/16 p0, 0x1130

    const/16 p1, 0x822

    .line 203
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterContentObserver()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 280
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->updatePreference()V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->mAlwaysOnScreen:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
