.class public Lcom/android/settings/datetime/DatePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DatePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;
    }
.end annotation


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    .line 63
    iput-object p3, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    return-void
.end method


# virtual methods
.method public buildDatePicker(Landroid/app/Activity;)Landroidx/picker/app/SeslDatePickerDialog;
    .locals 9

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    new-instance v7, Landroidx/picker/app/SeslDatePickerDialog;

    const/4 v8, 0x1

    .line 121
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x5

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroidx/picker/app/SeslDatePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslDatePickerDialog$OnDateSetListener;III)V

    .line 125
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 p0, 0x7d7

    const/4 p1, 0x0

    .line 126
    invoke-virtual {v0, p0, p1, v8}, Ljava/util/Calendar;->set(III)V

    .line 127
    invoke-virtual {v7}, Landroidx/picker/app/SeslDatePickerDialog;->getDatePicker()Landroidx/picker/widget/SeslDatePicker;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/picker/widget/SeslDatePicker;->setMinDate(J)V

    .line 128
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 p0, 0x7f5

    const/16 p1, 0xb

    const/16 v1, 0x1f

    .line 129
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/Calendar;->set(III)V

    .line 130
    invoke-virtual {v7}, Landroidx/picker/app/SeslDatePickerDialog;->getDatePicker()Landroidx/picker/widget/SeslDatePicker;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/picker/widget/SeslDatePicker;->setMaxDate(J)V

    .line 133
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v7
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "date"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "date"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p1, 0x26

    const/16 v0, 0x128f

    .line 99
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    invoke-interface {p0}, Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;->showDatePicker()V

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onDateSet(Landroidx/picker/widget/SeslDatePicker;III)V
    .locals 0

    .line 112
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/settings/datetime/DatePreferenceController;->setDate(III)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return-void
.end method

.method setDate(III)V
    .locals 4

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 144
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 145
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 146
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide v0, 0x1160d1b4800L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 148
    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    .line 149
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/timedetector/TimeDetector;

    const-string p3, "Settings: Set date"

    .line 151
    invoke-static {p1, p2, p3}, Landroid/app/timedetector/TimeDetector;->createManualTimeSuggestion(JLjava/lang/String;)Landroid/app/timedetector/ManualTimeSuggestion;

    move-result-object p1

    .line 152
    invoke-interface {p0, p1}, Landroid/app/timedetector/TimeDetector;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 73
    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->applyEDMDateTimeChangePolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 88
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/datetime/DatePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
