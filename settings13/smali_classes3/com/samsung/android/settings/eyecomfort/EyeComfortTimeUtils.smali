.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;
.super Ljava/lang/Object;
.source "EyeComfortTimeUtils.java"


# static fields
.field public static final DATE_DELIMITER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3b

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->DATE_DELIMITER:Ljava/lang/String;

    return-void
.end method

.method public static duringScheduleTime(Landroid/content/Context;I)Z
    .locals 6

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-wide/16 v2, 0x474

    const-string v4, "blue_light_filter_on_time"

    const/4 v5, -0x2

    invoke-static {p1, v4, v2, v3, v5}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int p1, v2

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v2, 0x1a4

    const-string v4, "blue_light_filter_off_time"

    invoke-static {p0, v4, v2, v3, v5}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int p0, v2

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v2, 0x474

    const-string v3, "blue_light_filter_automatic_on_time"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v2, 0x1a4

    const-string v3, "blue_light_filter_automatic_off_time"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_0
    const/4 v2, 0x0

    if-ge p1, p0, :cond_2

    if-gt p1, v1, :cond_1

    if-ge v1, p0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    if-ltz v1, :cond_4

    if-lt v1, p0, :cond_3

    if-lt v1, p1, :cond_4

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public static getBlueLightFilterUserTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 15

    const/4 v0, 0x1

    .line 96
    invoke-static {p0, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getCustomTimeToInt(Landroid/content/Context;Z)I

    move-result v1

    const/4 v2, 0x0

    .line 97
    invoke-static {p0, v2}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getCustomTimeToInt(Landroid/content/Context;Z)I

    move-result v3

    .line 99
    div-int/lit8 v4, v1, 0x3c

    .line 100
    rem-int/lit8 v5, v1, 0x3c

    .line 101
    div-int/lit8 v6, v3, 0x3c

    .line 102
    rem-int/lit8 v7, v3, 0x3c

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 107
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    .line 108
    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v10

    const/16 v11, 0xb

    const/16 v12, 0xa

    if-eqz v10, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    move v10, v12

    :goto_0
    invoke-virtual {v9, v10, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 109
    invoke-virtual {v9, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 110
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ~ "

    .line 111
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    .line 114
    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v11, v12

    :goto_1
    invoke-virtual {v9, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 115
    invoke-virtual {v9, v4, v7}, Ljava/util/Calendar;->set(II)V

    if-lt v1, v3, :cond_2

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->sec_blue_light_filter_off_time_next_day_summary_format:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 120
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    .line 118
    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 122
    :cond_2
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomTimeToInt(Landroid/content/Context;Z)I
    .locals 2

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v0, 0x474

    const-string p1, "blue_light_filter_on_time"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    :goto_0
    long-to-int p0, p0

    return p0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v0, 0x1a4

    const-string p1, "blue_light_filter_off_time"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    goto :goto_0
.end method

.method private static getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    if-nez p0, :cond_0

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static is24HourModeEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "24"

    if-nez v0, :cond_1

    .line 32
    invoke-static {p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortTimeUtils;->getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    const/4 v0, 0x1

    .line 33
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 35
    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    const-string v2, "12"

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 37
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x48

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    move-object v2, v1

    .line 47
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 49
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
