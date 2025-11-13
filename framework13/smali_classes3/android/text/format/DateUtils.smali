.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final whitelist ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final whitelist DAY_IN_MILLIS:J = 0x5265c00L

.field public static final whitelist FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_ABBREV_ALL:I = 0x80000

.field public static final whitelist FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final whitelist FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final whitelist FORMAT_ABBREV_TIME:I = 0x4000

.field public static final whitelist FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final whitelist FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final whitelist FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final whitelist FORMAT_NO_NOON:I = 0x200

.field public static final whitelist FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_NO_YEAR:I = 0x8

.field public static final whitelist FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final whitelist FORMAT_SHOW_DATE:I = 0x10

.field public static final whitelist FORMAT_SHOW_TIME:I = 0x1

.field public static final whitelist FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final whitelist FORMAT_SHOW_YEAR:I = 0x4

.field public static final whitelist FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final whitelist HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MINUTE_IN_MILLIS:J = 0xea60L

.field public static final whitelist MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final whitelist MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final whitelist NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final whitelist SECOND_IN_MILLIS:J = 0x3e8L

.field public static final whitelist WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final whitelist WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final whitelist YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final whitelist YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final whitelist YEAR_IN_MILLIS:J = 0x7528ad000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o sElapsedFormatHMMSS:Ljava/lang/String;

.field private static greylist-max-o sElapsedFormatMMSS:Ljava/lang/String;

.field private static greylist-max-o sLastConfig:Landroid/content/res/Configuration;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sNowTime:Landroid/text/format/Time;

.field private static greylist-max-o sThenTime:Landroid/text/format/Time;

.field public static final whitelist sameMonthTable:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist sameYearTable:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 134
    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .line 561
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 562
    .local v1, "f":Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I

    .line 585
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I
    .param p7, "timeZone"    # Ljava/lang/String;

    .line 756
    and-int/lit16 v0, p6, 0xc1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 757
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    or-int/2addr p6, v0

    .line 760
    :cond_1
    move-wide v0, p2

    move-wide v2, p4

    move v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "range":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    nop

    .line 766
    return-object p1

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, "impossible":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static whitelist formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "flags"    # I

    .line 812
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist formatDuration(J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "millis"    # J

    .line 385
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/text/format/DateUtils;->formatDuration(JI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r formatDuration(JI)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "millis"    # J
    .param p2, "abbrev"    # I

    .line 402
    sparse-switch p2, :sswitch_data_0

    .line 415
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .local v0, "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    goto :goto_0

    .line 412
    .end local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    :sswitch_0
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 413
    .restart local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    goto :goto_0

    .line 409
    .end local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    :sswitch_1
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 410
    .restart local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    goto :goto_0

    .line 404
    .end local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    :sswitch_2
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 405
    .restart local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    nop

    .line 417
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v1

    .line 418
    .local v1, "formatter":Landroid/icu/text/MeasureFormat;
    const-wide/32 v2, 0x36ee80

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    .line 419
    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, p0

    div-long/2addr v4, v2

    long-to-int v2, v4

    .line 420
    .local v2, "hours":I
    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 421
    .end local v2    # "hours":I
    :cond_0
    const-wide/32 v2, 0xea60

    cmp-long v4, p0, v2

    if-ltz v4, :cond_1

    .line 422
    const-wide/16 v4, 0x7530

    add-long/2addr v4, p0

    div-long/2addr v4, v2

    long-to-int v2, v4

    .line 423
    .local v2, "minutes":I
    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 425
    .end local v2    # "minutes":I
    :cond_1
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 426
    .local v2, "seconds":I
    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x14 -> :sswitch_1
        0x1e -> :sswitch_1
        0x28 -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .param p0, "elapsedSeconds"    # J

    .line 436
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 16
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "elapsedSeconds"    # J

    .line 449
    const-wide/16 v0, 0x0

    .line 450
    .local v0, "hours":J
    const-wide/16 v2, 0x0

    .line 451
    .local v2, "minutes":J
    const-wide/16 v4, 0x0

    .line 452
    .local v4, "seconds":J
    const-wide/16 v6, 0xe10

    cmp-long v8, p1, v6

    if-ltz v8, :cond_0

    .line 453
    div-long v0, p1, v6

    .line 454
    mul-long/2addr v6, v0

    sub-long v6, p1, v6

    .end local p1    # "elapsedSeconds":J
    .local v6, "elapsedSeconds":J
    goto :goto_0

    .line 452
    .end local v6    # "elapsedSeconds":J
    .restart local p1    # "elapsedSeconds":J
    :cond_0
    move-wide/from16 v6, p1

    .line 456
    .end local p1    # "elapsedSeconds":J
    .restart local v6    # "elapsedSeconds":J
    :goto_0
    const-wide/16 v8, 0x3c

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    .line 457
    div-long v2, v6, v8

    .line 458
    mul-long/2addr v8, v2

    sub-long/2addr v6, v8

    .line 460
    :cond_1
    move-wide v4, v6

    .line 464
    move-object/from16 v8, p0

    .line 465
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 466
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v10

    goto :goto_1

    .line 468
    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 473
    :goto_1
    new-instance v10, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v10, v8, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 474
    .local v10, "f":Ljava/util/Formatter;
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 475
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-lez v11, :cond_3

    .line 476
    sget-object v11, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v14, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v14, v13

    invoke-virtual {v10, v11, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 478
    :cond_3
    sget-object v11, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v13, v12

    invoke-virtual {v10, v11, v13}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static final whitelist formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "then"    # J
    .param p2, "now"    # J
    .param p4, "dateStyle"    # I
    .param p5, "timeStyle"    # I

    .line 501
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 502
    .local v0, "thenCal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 503
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 504
    .local v1, "thenDate":Ljava/util/Date;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 505
    .local v2, "nowCal":Ljava/util/Calendar;
    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 509
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 510
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 511
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 512
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .local v3, "f":Ljava/text/DateFormat;
    goto :goto_0

    .line 514
    .end local v3    # "f":Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .line 516
    .restart local v3    # "f":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist getAMPMString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ampm"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "amPm":[Ljava/lang/String;
    add-int/lit8 v1, p0, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static whitelist getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .param p0, "dayOfWeek"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    invoke-static {}, Landroid/icu/text/DateFormatSymbols;->getInstance()Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 208
    .local v0, "dfs":Landroid/icu/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_0

    .line 219
    const/4 v1, 0x0

    .local v1, "width":I
    goto :goto_0

    .line 213
    .end local v1    # "width":I
    :sswitch_0
    const/4 v1, 0x2

    .line 214
    .restart local v1    # "width":I
    goto :goto_0

    .line 210
    .end local v1    # "width":I
    :sswitch_1
    const/4 v1, 0x1

    .line 211
    .restart local v1    # "width":I
    nop

    .line 222
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p0

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist getMonthString(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 253
    .local v0, "dfs":Landroid/icu/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_0

    .line 264
    const/4 v1, 0x0

    .local v1, "width":I
    goto :goto_0

    .line 258
    .end local v1    # "width":I
    :sswitch_0
    const/4 v1, 0x2

    .line 259
    .restart local v1    # "width":I
    goto :goto_0

    .line 255
    .end local v1    # "width":I
    :sswitch_1
    const/4 v1, 0x1

    .line 256
    .restart local v1    # "width":I
    nop

    .line 267
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p0

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minResolution"    # J
    .param p5, "transitionResolution"    # J
    .param p7, "flags"    # I

    .line 351
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0xc1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 352
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    or-int/2addr v0, v1

    .line 355
    .end local p7    # "flags":I
    .local v0, "flags":I
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 356
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 355
    move-wide v3, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    move v11, v0

    invoke-static/range {v1 .. v11}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "startTime"    # J

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J

    .line 295
    const v7, 0x10014

    .line 296
    .local v7, "flags":I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J
    .param p6, "flags"    # I

    .line 321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 322
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 321
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .line 883
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 14
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "withPreposition"    # Z

    .line 833
    move-wide v7, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 834
    .local v9, "now":J
    sub-long v0, v9, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 836
    .local v11, "span":J
    const-class v13, Landroid/text/format/DateUtils;

    monitor-enter v13

    .line 837
    :try_start_0
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 841
    :cond_0
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v0, :cond_1

    .line 842
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 845
    :cond_1
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v0, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 846
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 849
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v11, v0

    if-gez v0, :cond_2

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_2

    .line 851
    const/4 v0, 0x1

    .line 852
    .local v0, "flags":I
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "result":Ljava/lang/String;
    const v0, 0x1040b41

    .line 854
    .local v0, "prepositionId":I
    goto :goto_0

    .end local v0    # "prepositionId":I
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_3

    .line 856
    const v0, 0x20014

    .line 857
    .local v0, "flags":I
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 860
    .restart local v1    # "result":Ljava/lang/String;
    const v0, 0x1040b40

    .line 861
    .local v0, "prepositionId":I
    goto :goto_0

    .line 863
    .end local v0    # "prepositionId":I
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const v0, 0x10010

    .line 864
    .local v0, "flags":I
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 865
    .restart local v1    # "result":Ljava/lang/String;
    const v2, 0x1040b40

    move v0, v2

    .line 867
    .local v0, "prepositionId":I
    :goto_0
    if-eqz p3, :cond_4

    .line 868
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 869
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 871
    .end local v0    # "prepositionId":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_4
    monitor-exit v13

    .line 872
    return-object v1

    .line 871
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static greylist-max-o initFormatStrings()V
    .locals 2

    .line 361
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o initFormatStringsLocked()V
    .locals 3

    .line 367
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 369
    .local v1, "cfg":Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    :cond_0
    sput-object v1, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 371
    const v2, 0x104048e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 372
    const v2, 0x104048d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 374
    :cond_1
    return-void
.end method

.method private static blacklist isSameDate(JJ)Z
    .locals 7
    .param p0, "oneMillis"    # J
    .param p2, "twoMillis"    # J

    .line 527
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 529
    .local v0, "zoneId":Ljava/time/ZoneId;
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 530
    .local v1, "oneInstant":Ljava/time/Instant;
    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 532
    .local v2, "oneLocalDateTime":Ljava/time/LocalDateTime;
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 533
    .local v3, "twoInstant":Ljava/time/Instant;
    invoke-static {v3, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 535
    .local v4, "twoLocalDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v5

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->getYear()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 536
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 537
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 535
    :goto_0
    return v5
.end method

.method public static whitelist isToday(J)Z
    .locals 2
    .param p0, "when"    # J

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/text/format/DateUtils;->isSameDate(JJ)Z

    move-result v0

    return v0
.end method
