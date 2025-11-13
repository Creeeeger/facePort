.class public abstract Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PETABYTE:Landroid/icu/util/MeasureUnit;

.field public static final SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/icu/text/UnicodeSetSpanner;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string v2, "[[:Zs:][:Cf:]]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetSpanner;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Landroid/icu/util/MeasureUnit;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const-string v1, "digital"

    const-string v2, "petabyte"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/MeasureUnit;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create petabyte MeasureUnit"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p3, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->roundBytes(IJ)Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;

    move-result-object p0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->fractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v0, p2}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    instance-of v1, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v1}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->isFileSize(Landroid/icu/util/MeasureUnit;)Z

    move-result v1

    iget v2, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->value:F

    if-eqz v1, :cond_2

    float-to-double v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x104055e

    invoke-virtual {p3, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p1, v1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p1

    new-instance v0, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {p1, v0}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    invoke-static {p2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_0

    const p1, 0x7f140887

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_1

    const p1, 0x7f141449

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_2

    const p1, 0x7f141787

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_3

    const p1, 0x7f1410b1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_4

    const p1, 0x7f142eb8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f141c1d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFileSize(Landroid/icu/util/MeasureUnit;)Z
    .locals 1

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

    sget-object v0, Lcom/samsung/android/settingslib/applications/AppFileSizeFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

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
