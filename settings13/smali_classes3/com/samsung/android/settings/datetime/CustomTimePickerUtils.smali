.class public Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;
.super Ljava/lang/Object;
.source "CustomTimePickerUtils.java"


# direct methods
.method public static getAmPmText(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomCalendarInstance(IIZ)Ljava/util/Calendar;
    .locals 1

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 79
    :goto_0
    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 80
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private static getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    .line 69
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

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getTimeText(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 23
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    const-string v0, "a"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 27
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static is24HourModeEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "24"

    if-nez v0, :cond_1

    .line 48
    invoke-static {p0}, Lcom/samsung/android/settings/datetime/CustomTimePickerUtils;->getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    const/4 v0, 0x1

    .line 49
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 51
    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    const-string v2, "12"

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 53
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x48

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    move-object v2, v1

    .line 63
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 65
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
