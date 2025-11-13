.class public Lcom/samsung/android/settings/display/SecDarkModeTimePickerUtils;
.super Ljava/lang/Object;
.source "SecDarkModeTimePickerUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getCustomCalendarInstance(IIZ)Ljava/util/Calendar;
    .locals 1

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 61
    :goto_0
    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 62
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

.method public static getTimeText(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 2

    .line 47
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "a"

    const-string v1, ""

    .line 50
    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "h"

    const-string v1, "H"

    .line 51
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeTimePickerUtils;->getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 55
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static is24HourModeEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "24"

    if-nez v0, :cond_1

    .line 25
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDarkModeTimePickerUtils;->getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    const/4 v0, 0x1

    .line 26
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 29
    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    const-string v2, "12"

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 31
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x48

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    move-object v2, v1

    .line 41
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 43
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
