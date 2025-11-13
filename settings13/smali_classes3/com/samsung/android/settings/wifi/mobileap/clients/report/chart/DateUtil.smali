.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method private static getDateFromMillis(J)Ljava/time/LocalDate;
    .locals 0

    .line 374
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 375
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFromStart(JI)J
    .locals 0

    .line 210
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateTimeFromMillis(J)Ljava/time/LocalDateTime;

    move-result-object p0

    int-to-long p1, p2

    .line 211
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 212
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getMillisFromDateTime(Ljava/time/LocalDateTime;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDateTimeFromMillis(J)Ljava/time/LocalDateTime;
    .locals 0

    .line 383
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 384
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static getDayOfWeekString(ZLjava/time/format/TextStyle;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/time/format/TextStyle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 419
    :goto_0
    sget-object v3, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    invoke-virtual {v3}, Ljava/time/DayOfWeek;->getValue()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x7

    if-le v1, v3, :cond_0

    .line 421
    sget-object v1, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    .line 423
    :cond_0
    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/time/DayOfWeek;->getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 428
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 429
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    return-object v0
.end method

.method public static getDiffDays(JJ)I
    .locals 0

    .line 112
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateFromMillis(J)Ljava/time/LocalDate;

    move-result-object p0

    .line 113
    invoke-static {p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateFromMillis(J)Ljava/time/LocalDate;

    move-result-object p1

    .line 114
    sget-object p2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p2, p1, p0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static getDiffDays(Ljava/lang/Long;)I
    .locals 4

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDiffDays(JJ)I

    move-result p0

    return p0
.end method

.method public static getIndexFromFirstDayOfWeek(J)I
    .locals 1

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    .line 86
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateTimeFromMillis(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result p0

    .line 89
    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result p1

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x7

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getMillisFromDateTime(Ljava/time/LocalDateTime;)J
    .locals 4

    .line 397
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    .line 399
    invoke-virtual {v1, p0}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v1

    .line 400
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    .line 403
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneOffset;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    invoke-static {p0, v0, v1}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSizeOfDailyViewPager()I
    .locals 1

    .line 257
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->SUPPORTED_DAYS_OF_DAILY_VIEW_ONE_UI_3_0:I

    return v0
.end method

.method public static getSizeOfDailyViewPager(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)I
    .locals 1

    .line 245
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_SOUND:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 247
    sget p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->SUPPORTED_DAYS_OF_DAILY_VIEW_ONE_UI_3_0:I

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 249
    invoke-static {p0}, Ljava/time/Period;->ofWeeks(I)Ljava/time/Period;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Period;->getDays()I

    move-result p0

    return p0

    .line 252
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getSizeOfDailyViewPager()I

    move-result p0

    return p0
.end method

.method public static getSizeOfWeeklyViewPager()I
    .locals 2

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result v0

    .line 275
    sget v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->DAYS_OF_WEEK:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x34

    if-eqz v0, :cond_1

    const/16 v1, 0x33

    :cond_1
    return v1
.end method

.method public static getSizeOfWeeklyViewPager(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)I
    .locals 2

    .line 262
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;->CATEGORY_DATA:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result p0

    .line 264
    sget v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->DAYS_OF_WEEK:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x34

    goto :goto_1

    :cond_1
    const/16 p1, 0x1a

    :goto_1
    if-eqz p0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    return p1

    .line 269
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getSizeOfWeeklyViewPager()I

    move-result p0

    return p0
.end method

.method public static getSystemBootTime()J
    .locals 4

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
