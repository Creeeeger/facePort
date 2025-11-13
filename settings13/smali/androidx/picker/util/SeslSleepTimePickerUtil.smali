.class public Landroidx/picker/util/SeslSleepTimePickerUtil;
.super Ljava/lang/Object;
.source "SeslSleepTimePickerUtil.java"


# direct methods
.method public static convertToTime(F)F
    .locals 2

    const/high16 v0, 0x40200000    # 2.5f

    div-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x43870000    # 270.0f

    sub-float/2addr p0, v0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    const/high16 v1, 0x44b40000    # 1440.0f

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method public static getFontFromOpenTheme(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "theme_font_clock"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getHourFormatData(Z)Z
    .locals 6

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, "Hm"

    goto :goto_0

    :cond_0
    const-string p0, "hm"

    .line 90
    :goto_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x48

    if-eq v4, v5, :cond_2

    const/16 v5, 0x68

    if-eq v4, v5, :cond_2

    const/16 v5, 0x4b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x6b

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v2, v3

    if-ge v2, v0, :cond_3

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne v4, p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public static getTimeSeparatorText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 68
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Hm"

    goto :goto_0

    :cond_0
    const-string p0, "hm"

    .line 66
    :goto_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x48

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x68

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :cond_1
    const-string v2, ":"

    if-ne v0, v1, :cond_2

    move-object p0, v2

    goto :goto_1

    :cond_2
    const/16 v3, 0x6d

    add-int/lit8 v0, v0, 0x1

    .line 77
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 84
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "\'"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public static isLeftAmPm()Z
    .locals 2

    .line 37
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "hm"

    .line 38
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needBedTimePickerAdjustment(F)Z
    .locals 1

    const/high16 v0, 0x43d20000    # 420.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static performHapticFeedback(Landroid/view/View;I)V
    .locals 1

    const v0, 0xc368

    add-int/2addr p1, v0

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public static setLargeTextSize(Landroid/content/Context;[Landroid/widget/TextView;F)V
    .locals 5

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    const/4 v4, 0x1

    .line 120
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static toDigitString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTwoDigitString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
