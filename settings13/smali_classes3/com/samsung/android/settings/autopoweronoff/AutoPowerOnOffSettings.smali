.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    }
.end annotation


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field private mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

.field private mAutoPowerOffTime:Landroidx/preference/SecPreference;

.field private mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field private mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

.field private mAutoPowerOnTime:Landroidx/preference/SecPreference;

.field private mContext:Landroid/content/Context;

.field private mCurrentDialogId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 499
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 525
    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private registerAutoPowerOffAlarm(Landroid/content/Context;Z)V
    .locals 2

    .line 372
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 373
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "power_off_reg"

    const/4 v1, 0x1

    .line 374
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "by_user"

    .line 375
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private registerAutoPowerOnAlarm(Landroid/content/Context;Z)V
    .locals 2

    .line 357
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 358
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "power_on_reg"

    const/4 v1, 0x1

    .line 359
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "by_user"

    .line 360
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAutoPowerOffTime(II)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p1, p2

    const-string p2, "auto_power_off_time"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method private setAutoPowerOnTime(II)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p1, p2

    const-string p2, "auto_power_on_time"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method private timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 0

    .line 341
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 342
    iput p2, p0, Landroid/text/format/Time;->hour:I

    .line 343
    iput p3, p0, Landroid/text/format/Time;->minute:I

    const/4 p2, 0x1

    .line 344
    invoke-virtual {p0, p2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide p2

    .line 347
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x281

    goto :goto_0

    :cond_0
    const/16 p0, 0x201

    .line 351
    :goto_0
    invoke-static {p1, p2, p3, p0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unregisterAutoPowerOffAlarm(Landroid/content/Context;)V
    .locals 2

    .line 380
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 381
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "power_off_reg"

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private unregisterAutoPowerOnAlarm(Landroid/content/Context;)V
    .locals 2

    .line 365
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 366
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "power_on_reg"

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateStatus()V
    .locals 9

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_power_on_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_power_off_settings"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    move v2, v1

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v4, 0x2bc

    const-string v5, "auto_power_on_time"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 129
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_power_on_repeat_days"

    const/16 v6, 0x7c

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 130
    new-instance v5, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v5, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    .line 132
    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v7, 0x8fc

    const-string v8, "auto_power_off_time"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 133
    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_power_off_repeat_days"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 134
    new-instance v7, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v7, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    .line 136
    iget-object v6, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v6, :cond_2

    .line 137
    invoke-virtual {v6, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    div-int/lit8 v6, v3, 0x64

    rem-int/lit8 v3, v3, 0x64

    invoke-direct {p0, v2, v6, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_5

    .line 147
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    div-int/lit8 v3, v4, 0x64

    rem-int/lit8 v4, v4, 0x64

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_6

    .line 151
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_7

    .line 155
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 156
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 105
    const-class p0, Lcom/android/settings/system/ResetDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x384

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    .line 114
    sget p1, Lcom/android/settings/R$xml;->sec_auto_power_on_off:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "auto_power_on_switch"

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    const-string p1, "auto_power_on_time"

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    const-string p1, "auto_power_on_days"

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    const-string p1, "auto_power_off_switch"

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    const-string p1, "auto_power_off_time"

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    const-string p1, "auto_power_off_days"

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 308
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x8fc

    const-string v2, "auto_power_off_time"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 293
    new-instance v0, Landroidx/picker/app/SeslTimePickerDialog;

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    div-int/lit8 v5, p1, 0x64

    rem-int/lit8 v6, p1, 0x64

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 300
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x2bc

    const-string v2, "auto_power_on_time"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 278
    new-instance v0, Landroidx/picker/app/SeslTimePickerDialog;

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    div-int/lit8 v5, p1, 0x64

    rem-int/lit8 v6, p1, 0x64

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 285
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_3

    .line 208
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    :cond_3
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    const/16 v5, 0x384

    const-string v6, "AutoPowerOnOffSettings"

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    .line 218
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "onPreferenceChange : mAutoPowerOnSettings"

    .line 219
    invoke-static {v6, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_power_on_settings"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    .line 223
    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnAlarm(Landroid/content/Context;)V

    :goto_0
    const/16 p0, 0x2329

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    .line 228
    :goto_1
    invoke-static {v5, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v7

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "onPreferenceChange : mAutoPowerOffSettings"

    .line 234
    invoke-static {v6, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_power_off_settings"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_3

    .line 238
    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    goto :goto_2

    .line 240
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOffAlarm(Landroid/content/Context;)V

    :goto_2
    const/16 p0, 0x232a

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-wide v1, v3

    .line 243
    :goto_3
    invoke-static {v5, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v7

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    check-cast p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange : mAutoPowerOnDays, value.getCoded() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result p2

    const-string v0, "auto_power_on_repeat_days"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    return v7

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 255
    check-cast p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange : mAutoPowerOffDays, value.getCoded() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result p2

    const-string v0, "auto_power_off_repeat_days"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    return v7

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AutoPowerOnOffSettings"

    if-eqz v0, :cond_0

    const-string v0, "Show dialog : KEY_AUTO_POWER_ON_TIME"

    .line 163
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 164
    iput v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Show dialog : KEY_AUTO_POWER_OFF_TIME"

    .line 168
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 169
    iput v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 173
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->updateStatus()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 267
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onTimeSet(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 1

    .line 314
    iget p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 315
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnTime(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 317
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOffTime(II)V

    :cond_1
    :goto_0
    return-void
.end method
