.class public Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TimeZoneInfoPreferenceController.java"


# instance fields
.field mDate:Ljava/util/Date;

.field private final mDateFormat:Landroid/icu/text/DateFormat;

.field private mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 48
    invoke-static {p1}, Landroid/icu/text/DateFormat;->getDateInstance(I)Landroid/icu/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 49
    sget-object p2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p1, p2}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 50
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    return-void
.end method

.method private findNextDstTransition(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/time/zone/ZoneOffsetTransition;
    .locals 4

    .line 146
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getJavaTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p1

    .line 149
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 153
    :goto_0
    invoke-virtual {p1, p0}, Ljava/time/zone/ZoneRules;->nextTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v2

    .line 158
    invoke-static {v0, p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->getDSTSavings(Landroid/icu/util/TimeZone;Ljava/time/Instant;)I

    move-result p0

    invoke-static {v0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->getDSTSavings(Landroid/icu/util/TimeZone;Ljava/time/Instant;)I

    move-result v3

    if-eq p0, v3, :cond_1

    :goto_1
    return-object v1

    :cond_1
    move-object p0, v2

    goto :goto_0
.end method

.method private formatInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;
    .locals 8

    .line 112
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->formatOffsetAndName(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->observesDaylightTime()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zone_info_footer_no_dst:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->findNextDstTransition(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v2

    if-nez v2, :cond_1

    .line 120
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zone_info_footer_no_dst:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 122
    :cond_1
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->getDSTSavings(Landroid/icu/util/TimeZone;Ljava/time/Instant;)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    if-eqz v5, :cond_3

    .line 123
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v6

    .line 126
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDisableIsraelCountry()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v7, "Asia/Jerusalem"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v6, 0x0

    :cond_4
    if-nez v6, :cond_6

    if-eqz v5, :cond_5

    .line 134
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->zone_time_type_dst:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 135
    :cond_5
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->zone_time_type_standard:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v6, p1

    .line 138
    :cond_6
    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object p1

    .line 139
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v1, p1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->zone_info_footer:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v6, v2, v4

    const/4 v0, 0x2

    aput-object p1, v2, v0

    invoke-static {p0, v1, v2}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method private formatOffsetAndName(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;
    .locals 5

    .line 76
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDisableIsraelCountry()Z

    move-result v1

    const-string v2, "Asia/Jerusalem"

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    const-string v1, " "

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->jerusalem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->time_picker_title:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->time_picker_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->jerusalem:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDisableIsraelCountry()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zone_time_type_dst:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 103
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 105
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->zone_info_offset_and_name:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    .line 105
    invoke-static {p0, v1, v2}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method private static getDSTSavings(Landroid/icu/util/TimeZone;Ljava/time/Instant;)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 169
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    const/4 p0, 0x1

    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

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
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->formatInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

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

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
