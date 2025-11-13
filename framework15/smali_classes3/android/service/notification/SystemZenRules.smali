.class public final Landroid/service/notification/SystemZenRules;
.super Ljava/lang/Object;
.source "SystemZenRules.java"


# static fields
.field public static final blacklist PACKAGE_ANDROID:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "SystemZenRules"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDaysOfWeekForLocale(Ljava/util/Calendar;)[I
    .locals 5

    const/4 v0, 0x7

    new-array v1, v0, [I

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    if-le v2, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    aput v2, v1, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static blacklist getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getShortDaysSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .locals 13

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_8

    array-length v1, v0

    if-lez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2}, Landroid/service/notification/SystemZenRules;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v4

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    :goto_0
    array-length v8, v4

    if-ge v7, v8, :cond_7

    aget v8, v4, v7

    add-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    if-ne v7, v9, :cond_0

    move v9, v10

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x0

    :goto_2
    array-length v12, v0

    if-ge v11, v12, :cond_3

    aget v12, v0, v11

    if-ne v8, v12, :cond_2

    add-int/lit8 v12, v6, 0x1

    if-ne v7, v12, :cond_1

    move v6, v7

    const/4 v9, 0x0

    goto :goto_3

    :cond_1
    move v5, v7

    move v6, v7

    :goto_3
    array-length v12, v4

    sub-int/2addr v12, v10

    if-ne v7, v12, :cond_3

    const/4 v9, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    if-eqz v9, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_4

    nop

    const v10, 0x10410ea

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "EEE"

    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v11, 0x7

    if-ne v5, v6, :cond_5

    aget v12, v4, v5

    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    aget v12, v4, v5

    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->set(II)V

    aget v12, v4, v6

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    nop

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const v12, 0x10410eb

    invoke-virtual {p0, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10410e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->getShortDaysSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x10410ea

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-static {p0, v2, v3}, Landroid/service/notification/SystemZenRules;->timeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v4, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-static {p0, v3, v4}, Landroid/service/notification/SystemZenRules;->timeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x10410eb

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 2

    const-string v0, "android"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .locals 4

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v1}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-static {p0, v1}, Landroid/service/notification/SystemZenRules;->upgradeSystemProviderRule(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    :cond_0
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private static blacklist timeString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 4

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    nop

    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    nop

    invoke-static {p0, v1}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t determine type of system-owned ZenRule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemZenRules"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private static blacklist updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist upgradeSystemProviderRule(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 4

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    iput v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {p0, v1}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t determine type of system-owned ZenRule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemZenRules"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
