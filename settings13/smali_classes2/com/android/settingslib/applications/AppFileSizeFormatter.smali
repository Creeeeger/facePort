.class public Lcom/android/settingslib/applications/AppFileSizeFormatter;
.super Ljava/lang/Object;
.source "AppFileSizeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;,
        Lcom/android/settingslib/applications/AppFileSizeFormatter$BytesResult;
    }
.end annotation


# static fields
.field private static final PETABYTE:Landroid/icu/util/MeasureUnit;

.field private static final SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;


# direct methods
.method static bridge synthetic -$$Nest$sfgetPETABYTE()Landroid/icu/util/MeasureUnit;
    .locals 1

    sget-object v0, Lcom/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 152
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string v2, "[[:Zs:][:Cf:]]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetSpanner;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Lcom/android/settingslib/applications/AppFileSizeFormatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    .line 194
    invoke-static {}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->createPetaByte()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 62
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static createPetaByte()Landroid/icu/util/MeasureUnit;
    .locals 6

    .line 206
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Landroid/icu/util/MeasureUnit;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "digital"

    aput-object v2, v1, v4

    const-string/jumbo v2, "petabyte"

    aput-object v2, v1, v5

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/MeasureUnit;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create petabyte MeasureUnit"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/android/settingslib/applications/AppFileSizeFormatter$BytesResult;
    .locals 3

    .line 171
    invoke-static {p1, p2, p3}, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->roundBytes(JI)Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;

    move-result-object p1

    .line 172
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    .line 173
    iget p3, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->fractionDigits:I

    invoke-static {p2, p3}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object p3

    .line 174
    iget v0, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    float-to-double v0, v0

    invoke-virtual {p3, v0, v1}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->isFileSize(Landroid/icu/util/MeasureUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object p2, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {p0, p2}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 183
    :cond_0
    iget p0, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    iget-object v1, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {p2, p3, p0, v1}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {p0, v0}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    sget-object p2, Lcom/android/settingslib/applications/AppFileSizeFormatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    invoke-virtual {p2, p0}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 188
    :goto_0
    new-instance p2, Lcom/android/settingslib/applications/AppFileSizeFormatter$BytesResult;

    iget-wide v1, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->roundedBytes:J

    invoke-direct {p2, v0, p0, v1, v2}, Lcom/android/settingslib/applications/AppFileSizeFormatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p2
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 102
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->roundBytes(JI)Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;

    move-result-object p1

    .line 103
    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatRoundedBytesResult(Landroid/content/Context;Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, v0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    .line 149
    new-instance p1, Landroid/icu/util/Measure;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatRoundedBytesResult(Landroid/content/Context;Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;)Ljava/lang/String;
    .locals 4

    .line 157
    invoke-static {p0}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 158
    iget v1, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->fractionDigits:I

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v1

    .line 159
    iget-object v2, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v2}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->isFileSize(Landroid/icu/util/MeasureUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget v0, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const v1, 0x104051e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object p1, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v3, p1}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    .line 162
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    iget p0, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    iget-object p1, p1, Lcom/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/applications/AppFileSizeFormatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .locals 0

    .line 123
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 127
    instance-of p1, p0, Landroid/icu/text/DecimalFormat;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 130
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    :cond_0
    return-object p0
.end method

.method private static getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_0

    .line 108
    sget p1, Lcom/android/settingslib/R$string;->byteShort:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    sget-object v0, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_1

    .line 110
    sget p1, Lcom/android/settingslib/R$string;->kilobyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_1
    sget-object v0, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_2

    .line 112
    sget p1, Lcom/android/settingslib/R$string;->megabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_2
    sget-object v0, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_3

    .line 114
    sget p1, Lcom/android/settingslib/R$string;->gigabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_3
    sget-object v0, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_4

    .line 116
    sget p1, Lcom/android/settingslib/R$string;->terabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_4
    sget p1, Lcom/android/settingslib/R$string;->petabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isFileSize(Landroid/icu/util/MeasureUnit;)Z
    .locals 1

    .line 388
    sget-object v0, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static localeFromContext(Landroid/content/Context;)Ljava/util/Locale;
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

    return-object p0
.end method
