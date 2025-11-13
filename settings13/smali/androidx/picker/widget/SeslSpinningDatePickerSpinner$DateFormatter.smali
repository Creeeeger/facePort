.class Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;
.super Ljava/lang/Object;
.source "SeslSpinningDatePickerSpinner.java"

# interfaces
.implements Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslSpinningDatePickerSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field mCurrentLocale:Ljava/util/Locale;

.field mFmt:Landroid/icu/text/SimpleDateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->mArgs:[Ljava/lang/Object;

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 86
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->init(Ljava/util/Locale;)V

    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Landroid/icu/text/SimpleDateFormat;
    .locals 2

    .line 117
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->isSimplifiedChinese(Ljava/util/Locale;)Z

    move-result v0

    const-string v1, "EEEEE, MMM dd"

    if-eqz v0, :cond_0

    .line 118
    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {p0, v1, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->isRTL(Ljava/util/Locale;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 121
    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {p0, v1, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0

    .line 123
    :cond_1
    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    const-string v0, "EEE, MMM dd"

    invoke-direct {p0, v0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->createFormatter(Ljava/util/Locale;)Landroid/icu/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->mFmt:Landroid/icu/text/SimpleDateFormat;

    .line 91
    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->mCurrentLocale:Ljava/util/Locale;

    return-void
.end method

.method private isRTL(Ljava/util/Locale;)Z
    .locals 2

    .line 141
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    return p1
.end method

.method private isSimplifiedChinese(Ljava/util/Locale;)Z
    .locals 1

    .line 146
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->init(Ljava/util/Locale;)V

    .line 100
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->mArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 101
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->mFmt:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 111
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;->mArgs:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    .line 112
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const v0, 0x8001a

    invoke-static {p2, p0, p1, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatForAccessibility(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const/16 v0, 0x1a

    invoke-static {p2, p0, p1, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
