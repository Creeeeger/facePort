.class public final Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final gmtOffsetTexts:[Ljava/lang/CharSequence;

.field public final olsonIdsToDisplay:[Ljava/lang/String;

.field public final timeZones:[Ljava/util/TimeZone;

.field public final zoneCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const-string v5, "ZoneGetter"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f17001b

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    :goto_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v11, 0x3

    if-eq v0, v11, :cond_1

    :goto_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v8, :cond_3

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v7, :cond_2

    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :cond_2
    :try_start_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v11, v0

    goto :goto_4

    :cond_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "timezone"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v11, :cond_5

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_3

    :cond_5
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_4
    if-eqz v10, :cond_6

    :try_start_4
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_5
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v11
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const-string v0, "Unable to read timezones.xml file"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    const-string v0, "Ill-formatted timezones.xml file"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    new-array v5, v0, [Ljava/util/TimeZone;

    iput-object v5, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    move v0, v9

    :goto_7
    iget v5, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v0, v5, :cond_15

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v10, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aput-object v5, v10, v0

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    iget-object v10, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aput-object v5, v10, v0

    iget-object v10, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat;->getGMTPattern()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "{0}"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    const-string v12, "GMT"

    const-string v13, ""

    goto :goto_8

    :cond_7
    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x3

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v12, v14

    :goto_8
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    new-instance v14, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v14, v12}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v14

    invoke-static {v11, v12, v14}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    :cond_8
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    if-gez v5, :cond_9

    neg-int v5, v5

    sget-object v12, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    goto :goto_9

    :cond_9
    sget-object v12, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    :goto_9
    invoke-virtual {v3, v12}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v14

    move-object/from16 p1, v10

    int-to-long v9, v5

    const-wide/32 v16, 0x36ee80

    div-long v7, v9, v16

    long-to-int v7, v7

    const-wide/32 v16, 0xea60

    div-long v9, v9, v16

    long-to-int v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_12

    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v5, 0x2b

    if-eq v10, v5, :cond_a

    const/16 v5, 0x2d

    if-eq v10, v5, :cond_a

    const/16 v5, 0x2212

    if-ne v10, v5, :cond_b

    :cond_a
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move/from16 v21, v7

    const/4 v7, 0x2

    goto/16 :goto_11

    :cond_b
    const/16 v5, 0x48

    if-eq v10, v5, :cond_d

    const/16 v15, 0x6d

    if-ne v10, v15, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {v11, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move/from16 v21, v7

    const/4 v7, 0x2

    goto :goto_10

    :cond_d
    :goto_b
    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v15, v5, :cond_e

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_e

    move v9, v15

    const/4 v5, 0x2

    :goto_c
    const/16 v15, 0x48

    goto :goto_d

    :cond_e
    const/4 v5, 0x1

    goto :goto_c

    :goto_d
    if-ne v10, v15, :cond_f

    const-string v10, "hour"

    move v15, v7

    goto :goto_e

    :cond_f
    const-string v10, "minute"

    move v15, v8

    :goto_e
    move-object/from16 v18, v3

    div-int/lit8 v3, v15, 0xa

    move-object/from16 v19, v4

    rem-int/lit8 v4, v15, 0xa

    move-object/from16 v20, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move/from16 v21, v7

    const/16 v7, 0xa

    if-ge v15, v7, :cond_10

    const/4 v7, 0x2

    if-ne v5, v7, :cond_11

    goto :goto_f

    :cond_10
    const/4 v7, 0x2

    :goto_f
    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v14, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {v4}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    int-to-long v5, v15

    invoke-virtual {v4, v5, v6}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    :goto_10
    const/4 v3, 0x1

    goto :goto_12

    :goto_11
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v4, v3}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    goto :goto_10

    :goto_12
    add-int/2addr v9, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    goto/16 :goto_a

    :cond_12
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    const/4 v7, 0x2

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    new-instance v3, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v3, v13}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    invoke-static {v11, v13, v3}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    :cond_13
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    const/4 v5, 0x1

    if-ne v6, v5, :cond_14

    sget-object v6, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_13

    :cond_14
    sget-object v6, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    :goto_13
    invoke-virtual {v4, v3, v6}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    move v8, v7

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v6, v20

    const/4 v9, 0x0

    move v7, v5

    goto/16 :goto_7

    :cond_15
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_14

    :cond_16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_14
    return-void
.end method


# virtual methods
.method public lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
