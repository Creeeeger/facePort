.class public Lcom/android/settings/datetime/TimeFormatPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeFormatPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mDummyDate:Ljava/util/Calendar;

.field private final mIsFromSUW:Z

.field private final mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean p3, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mIsFromSUW:Z

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mDummyDate:Ljava/util/Calendar;

    .line 56
    iput-object p2, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    return-void
.end method

.method private is24Hour()Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static set24Hour(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "24"

    goto :goto_0

    :cond_1
    const-string p1, "12"

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "time_12_24"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static timeUpdated(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    .line 136
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static update24HourFormat(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 122
    invoke-static {p0, p1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->set24Hour(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 123
    invoke-static {p0, p1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->timeUpdated(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "24 hour"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mIsFromSUW:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 100
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "24 hour"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0x26

    const/16 v0, 0x1290

    .line 105
    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 106
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->update24HourFormat(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 10

    .line 66
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->is24Hour()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 80
    iget-object v3, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/datetime/TimeFormatPreferenceController;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
