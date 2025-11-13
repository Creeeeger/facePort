.class public Lcom/android/settings/datetime/TimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
    }
.end annotation


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    .line 63
    iput-object p3, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    return-void
.end method


# virtual methods
.method public buildTimePicker(Landroid/app/Activity;)Landroidx/picker/app/SeslTimePickerDialog;
    .locals 8

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    new-instance v7, Landroidx/picker/app/SeslTimePickerDialog;

    const/16 v1, 0xb

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v1, 0xc

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 129
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 131
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v7
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "time"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "time"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p1, 0x26

    const/16 v0, 0x1290

    .line 99
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    invoke-interface {p0}, Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;->showTimePicker()V

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onTimeSet(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/datetime/TimePreferenceController;->setTime(II)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method setTime(II)V
    .locals 4

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 147
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 148
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 p2, 0x0

    .line 149
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 150
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 151
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide v0, 0x1160d1b4800L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 153
    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/timedetector/TimeDetector;

    const-string v0, "Settings: Set time"

    .line 156
    invoke-static {p1, p2, v0}, Landroid/app/timedetector/TimeDetector;->createManualTimeSuggestion(JLjava/lang/String;)Landroid/app/timedetector/ManualTimeSuggestion;

    move-result-object p1

    .line 157
    invoke-interface {p0, p1}, Landroid/app/timedetector/TimeDetector;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 73
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->applyEDMDateTimeChangePolicy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 88
    :cond_2
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/datetime/TimePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
