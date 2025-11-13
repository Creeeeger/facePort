.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final greylist AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist DISALLOW_DUPLICATE_FIELD_IN_SKELETON:J = 0xa258efeL

.field public static final greylist HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o sIs24Hour:Z

.field private static greylist-max-o sIs24HourLocale:Ljava/util/Locale;

.field private static final greylist-max-o sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o appendQuotedText(Landroid/text/SpannableStringBuilder;I)I
    .locals 5
    .param p0, "formatString"    # Landroid/text/SpannableStringBuilder;
    .param p1, "index"    # I

    .line 664
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 665
    .local v0, "length":I
    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x27

    if-ge v1, v0, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 666
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 667
    const/4 v1, 0x1

    return v1

    .line 670
    :cond_0
    const/4 v1, 0x0

    .line 673
    .local v1, "count":I
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 674
    add-int/lit8 v0, v0, -0x1

    .line 676
    :goto_0
    if-ge p1, v0, :cond_3

    .line 677
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 679
    .local v3, "c":C
    if-ne v3, v2, :cond_2

    .line 681
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v0, :cond_1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    .line 683
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 684
    add-int/lit8 v0, v0, -0x1

    .line 685
    add-int/lit8 v1, v1, 0x1

    .line 686
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 689
    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 690
    goto :goto_2

    .line 693
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 694
    add-int/lit8 v1, v1, 0x1

    .line 696
    .end local v3    # "c":C
    :goto_1
    goto :goto_0

    .line 698
    :cond_3
    :goto_2
    return v1
.end method

.method public static whitelist format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .line 423
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    .line 493
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 496
    .local v0, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    .line 497
    .local v1, "dfs":Landroid/icu/text/DateFormatSymbols;
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "amPm":[Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 501
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 502
    const/4 v5, 0x1

    .line 503
    .local v5, "count":I
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .line 505
    .local v6, "c":I
    const/16 v7, 0x27

    if-ne v6, v7, :cond_0

    .line 506
    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    .line 507
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 508
    goto/16 :goto_3

    .line 511
    :cond_0
    :goto_1
    add-int v7, v4, v5

    if-ge v7, v3, :cond_1

    add-int v7, v4, v5

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    .line 512
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 516
    :cond_1
    sparse-switch v6, :sswitch_data_0

    .line 569
    const/4 v7, 0x0

    .local v7, "replacement":Ljava/lang/String;
    goto/16 :goto_2

    .line 566
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_0
    invoke-static {p1, v5}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v7

    .line 567
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 563
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v7

    .line 564
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 560
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_2
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 561
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 557
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_3
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 558
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 522
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_4
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 523
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 554
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_5
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v7

    .line 555
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 532
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_6
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 533
    .local v7, "hour":I
    const/16 v8, 0x68

    if-ne v6, v8, :cond_2

    if-nez v7, :cond_2

    .line 534
    const/16 v7, 0xc

    .line 536
    :cond_2
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 538
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_2

    .line 542
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_7
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 549
    .local v7, "hour":I
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 551
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_2

    .line 526
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_8
    const/4 v7, 0x7

    .line 527
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 526
    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v7

    .line 528
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 519
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_9
    const/16 v7, 0x9

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    aget-object v7, v2, v7

    .line 520
    .restart local v7    # "replacement":Ljava/lang/String;
    nop

    .line 573
    :goto_2
    if-eqz v7, :cond_3

    .line 574
    add-int v8, v4, v5

    invoke-virtual {v0, v4, v8, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 575
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 576
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 501
    .end local v6    # "c":I
    .end local v7    # "replacement":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/2addr v4, v5

    goto/16 :goto_0

    .line 580
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_4
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_5

    .line 581
    new-instance v4, Landroid/text/SpannedString;

    invoke-direct {v4, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    .line 583
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x45 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4b -> :sswitch_6
        0x4c -> :sswitch_5
        0x4d -> :sswitch_5
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x64 -> :sswitch_4
        0x68 -> :sswitch_6
        0x6b -> :sswitch_7
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x79 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    .line 434
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 435
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 436
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o formatZoneOffset(II)Ljava/lang/String;
    .locals 5
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .line 629
    div-int/lit16 p0, p0, 0x3e8

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v0, "tb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-gez p0, :cond_0

    .line 633
    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    neg-int p0, p0

    goto :goto_0

    .line 636
    :cond_0
    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :goto_0
    div-int/lit16 v1, p0, 0xe10

    .line 640
    .local v1, "hours":I
    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 642
    .local v2, "minutes":I
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 268
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 269
    .local v0, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    const-wide/32 v1, 0xa258efe

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 271
    .local v1, "allowDuplicateFields":Z
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 321
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDateFormatOrder(Landroid/content/Context;)[C
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 356
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDateFormatOrder(Ljava/lang/String;)[C
    .locals 11
    .param p0, "pattern"    # Ljava/lang/String;

    .line 363
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 364
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 365
    .local v1, "resultIndex":I
    const/4 v2, 0x0

    .line 366
    .local v2, "sawDay":Z
    const/4 v3, 0x0

    .line 367
    .local v3, "sawMonth":Z
    const/4 v4, 0x0

    .line 369
    .local v4, "sawYear":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 370
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 371
    .local v6, "ch":C
    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    if-eq v6, v10, :cond_7

    if-eq v6, v7, :cond_7

    if-eq v6, v9, :cond_7

    if-ne v6, v8, :cond_0

    goto/16 :goto_2

    .line 382
    :cond_0
    const/16 v7, 0x47

    if-ne v6, v7, :cond_1

    goto/16 :goto_3

    .line 384
    :cond_1
    const/16 v7, 0x61

    if-lt v6, v7, :cond_2

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3

    :cond_2
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3

    goto :goto_1

    .line 385
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 387
    :cond_4
    :goto_1
    const/16 v7, 0x27

    if-ne v6, v7, :cond_b

    .line 388
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_5

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_5

    .line 389
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 391
    :cond_5
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 392
    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    .line 395
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 393
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad quoting in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 372
    :cond_7
    :goto_2
    if-ne v6, v10, :cond_8

    if-nez v2, :cond_8

    .line 373
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .local v7, "resultIndex":I
    aput-char v10, v0, v1

    .line 374
    const/4 v1, 0x1

    move v2, v1

    move v1, v7

    .end local v2    # "sawDay":Z
    .local v1, "sawDay":Z
    goto :goto_3

    .line 375
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v2    # "sawDay":Z
    :cond_8
    if-eq v6, v7, :cond_9

    if-ne v6, v9, :cond_a

    :cond_9
    if-nez v3, :cond_a

    .line 376
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v9, v0, v1

    .line 377
    const/4 v1, 0x1

    move v3, v1

    move v1, v7

    .end local v3    # "sawMonth":Z
    .local v1, "sawMonth":Z
    goto :goto_3

    .line 378
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v3    # "sawMonth":Z
    :cond_a
    if-ne v6, v8, :cond_b

    if-nez v4, :cond_b

    .line 379
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v8, v0, v1

    .line 380
    const/4 v1, 0x1

    move v4, v1

    move v1, v7

    .line 369
    .end local v6    # "ch":C
    .end local v7    # "resultIndex":I
    .restart local v1    # "resultIndex":I
    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 401
    .end local v5    # "i":I
    :cond_c
    return-object v0
.end method

.method private static greylist-max-o getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 406
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 408
    .local v1, "df":Ljava/text/DateFormat;
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_0

    .line 409
    move-object v2, v1

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 412
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "!(df instanceof SimpleDateFormat)"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static blacklist getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .locals 4
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 588
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x63

    if-ne p3, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 589
    .local v2, "standalone":Z
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 591
    .local v0, "context":I
    :goto_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 592
    const/4 v1, 0x2

    .local v1, "width":I
    goto :goto_2

    .line 593
    .end local v1    # "width":I
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 594
    const/4 v1, 0x1

    .restart local v1    # "width":I
    goto :goto_2

    .line 596
    .end local v1    # "width":I
    :cond_3
    const/4 v1, 0x0

    .line 598
    .restart local v1    # "width":I
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    return-object v3
.end method

.method public static blacklist getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 714
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    const-class v1, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, v1, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static whitelist getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 332
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 343
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .locals 5
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 602
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x4c

    if-ne p3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 603
    .local v2, "standalone":Z
    :goto_0
    if-eqz v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 604
    .local v3, "monthContext":I
    :goto_1
    const/4 v4, 0x5

    if-ne p2, v4, :cond_2

    .line 605
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 606
    :cond_2
    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    .line 607
    invoke-virtual {p0, v3, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 608
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 609
    invoke-virtual {p0, v3, v0}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 612
    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 283
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public static greylist getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 306
    nop

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 306
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 308
    .local v0, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 309
    :cond_0
    const-string/jumbo v1, "hm"

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    :goto_0
    return-object v1
.end method

.method private static greylist-max-o getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 3
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    .line 617
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 618
    .local v0, "tz":Ljava/util/TimeZone;
    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 619
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xf

    .line 620
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 619
    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 623
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 624
    .local v1, "dst":Z
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getYearString(II)Ljava/lang/String;
    .locals 4
    .param p0, "year"    # I
    .param p1, "count"    # I

    .line 648
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    rem-int/lit8 v1, p0, 0x64

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_0
    return-object v0
.end method

.method public static greylist-max-r hasDesignator(Ljava/lang/CharSequence;C)Z
    .locals 7
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    .line 466
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 468
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 470
    .local v1, "length":I
    const/4 v2, 0x0

    .line 471
    .local v2, "insideQuote":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 472
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 473
    .local v4, "c":C
    const/16 v5, 0x27

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 474
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    move v2, v6

    goto :goto_2

    .line 475
    :cond_2
    if-nez v2, :cond_3

    .line 476
    if-ne v4, p1, :cond_3

    .line 477
    return v6

    .line 471
    .end local v4    # "c":C
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public static greylist hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    .line 452
    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static whitelist is24HourFormat(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static greylist is24HourFormat(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourLocale(Ljava/util/Locale;)Z

    move-result v1

    return v1
.end method

.method public static greylist-max-o is24HourLocale(Ljava/util/Locale;)Z
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 214
    sget-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    sget-boolean v1, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v0

    return v1

    .line 218
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    const/4 v1, 0x1

    .line 221
    invoke-static {v1, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 224
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_1

    .line 225
    move-object v2, v1

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 226
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "pattern":Ljava/lang/String;
    const/16 v4, 0x48

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v2

    .line 228
    .end local v3    # "pattern":Ljava/lang/String;
    .local v2, "is24Hour":Z
    goto :goto_0

    .line 229
    .end local v2    # "is24Hour":Z
    :cond_1
    const/4 v2, 0x0

    .line 232
    .restart local v2    # "is24Hour":Z
    :goto_0
    monitor-enter v0

    .line 233
    :try_start_1
    sput-object p0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 234
    sput-boolean v2, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 235
    monitor-exit v0

    .line 237
    return v2

    .line 235
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 218
    .end local v1    # "natural":Ljava/text/DateFormat;
    .end local v2    # "is24Hour":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private static greylist-max-o zeroPad(II)Ljava/lang/String;
    .locals 5
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    .line 702
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
