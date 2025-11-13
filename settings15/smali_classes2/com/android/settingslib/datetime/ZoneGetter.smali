.class public abstract Lcom/android/settingslib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V
    .locals 2

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static capitalizeForStandaloneDisplay(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 16

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getGMTPattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{0}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const-string v1, "GMT"

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v3, v1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v1, p2

    invoke-virtual {v1, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    if-gez v1, :cond_2

    neg-int v1, v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    :goto_1
    move-object/from16 v5, p0

    goto :goto_2

    :cond_2
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    goto :goto_1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v1

    const-wide/32 v8, 0x36ee80

    div-long v8, v6, v8

    long-to-int v1, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    rem-int/lit8 v6, v6, 0x3c

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v4, v7, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x2b

    if-eq v7, v9, :cond_a

    const/16 v9, 0x2d

    if-eq v7, v9, :cond_a

    const/16 v9, 0x2212

    if-ne v7, v9, :cond_3

    goto :goto_7

    :cond_3
    const/16 v9, 0x48

    if-eq v7, v9, :cond_5

    const/16 v10, 0x6d

    if-ne v7, v10, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    :cond_5
    :goto_4
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v10, v11, :cond_6

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v7, :cond_6

    move v4, v10

    move v10, v12

    goto :goto_5

    :cond_6
    move v10, v8

    :goto_5
    if-ne v7, v9, :cond_7

    const-string v7, "hour"

    move v9, v1

    goto :goto_6

    :cond_7
    const-string v7, "minute"

    move v9, v6

    :goto_6
    div-int/lit8 v11, v9, 0xa

    rem-int/lit8 v13, v9, 0xa

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v15, 0xa

    if-ge v9, v15, :cond_8

    if-ne v10, v12, :cond_9

    :cond_8
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {v11}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    int-to-long v12, v9

    invoke-virtual {v11, v12, v13}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v7

    invoke-static {v0, v10, v7}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    goto :goto_8

    :cond_a
    :goto_7
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v9, v7}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v9

    invoke-static {v0, v7, v9}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    :goto_8
    add-int/2addr v4, v8

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    :cond_c
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v8, :cond_d

    sget-object v2, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_9

    :cond_d
    sget-object v2, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    :goto_9
    invoke-virtual {v0, v1, v2}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
