.class public final Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mArgs:[Ljava/lang/Object;

.field public final mBuilder:Ljava/lang/StringBuilder;

.field public mFmt:Ljava/util/Formatter;

.field public mZeroDigit:C


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;->mZeroDigit:C

    return-void
.end method
