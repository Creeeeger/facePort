.class Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "SeslNumberPicker.java"

# interfaces
.implements Landroidx/picker/widget/SeslNumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;

.field mZeroDigit:C


# direct methods
.method constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 1

    .line 120
    new-instance v0, Ljava/util/Formatter;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static getZeroDigit(Ljava/util/Locale;)C
    .locals 0

    .line 116
    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result p0

    return p0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 98
    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result p1

    iput-char p1, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mZeroDigit:C

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 104
    iget-char v1, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mZeroDigit:C

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 105
    invoke-direct {p0, v0}, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 107
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 108
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    monitor-enter p1

    .line 109
    :try_start_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    const-string v1, "%02d"

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 111
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
