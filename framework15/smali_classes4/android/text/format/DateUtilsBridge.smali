.class public final Landroid/text/format/DateUtilsBridge;
.super Ljava/lang/Object;
.source "DateUtilsBridge.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;
    .locals 1

    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-virtual {v0, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public static blacklist dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method private static blacklist fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public static blacklist icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;
    .locals 1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method public static blacklist isDisplayMidnightUsingSkeleton(Landroid/icu/util/Calendar;)Z
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isThisYear(Landroid/icu/util/Calendar;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist onTheHour(Landroid/icu/util/Calendar;)Z
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p0, p1}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .locals 5

    const/high16 v0, 0x80000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const v0, 0x1c000

    or-int/2addr p2, v0

    :cond_0
    const-string v0, "MMMM"

    const/high16 v1, 0x20000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    const-string v0, "M"

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    const-string v0, "MMM"

    :cond_2
    :goto_0
    const-string v1, "EEEE"

    const v2, 0x8000

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    const-string v1, "EEE"

    :cond_3
    const-string v2, "j"

    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_4

    const-string v2, "H"

    goto :goto_1

    :cond_4
    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_5

    const-string v2, "h"

    :cond_5
    :goto_1
    and-int/lit16 v3, p2, 0x4000

    const-string v4, "m"

    if-eqz v3, :cond_8

    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {p0}, Landroid/text/format/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_a

    or-int/lit8 p2, p2, 0x10

    :cond_a
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_b

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_b

    and-int/lit8 p2, p2, -0x3

    and-int/lit8 p2, p2, -0x2

    :cond_b
    and-int/lit8 v3, p2, 0x13

    if-nez v3, :cond_c

    or-int/lit8 p2, p2, 0x10

    :cond_c
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_10

    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {p0}, Landroid/text/format/DateUtilsBridge;->isThisYear(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_f
    or-int/lit8 p2, p2, 0x4

    :cond_10
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v4, p2, 0x30

    if-eqz v4, :cond_12

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, p2, 0x20

    if-nez v4, :cond_12

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_13

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_14

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
