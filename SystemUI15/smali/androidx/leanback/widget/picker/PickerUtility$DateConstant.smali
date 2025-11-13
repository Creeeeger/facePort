.class public final Landroidx/leanback/widget/picker/PickerUtility$DateConstant;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final locale:Ljava/util/Locale;

.field public final months:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p2

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result p2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p0

    sub-int p1, p0, p2

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    move v0, p2

    :goto_0
    if-gt v0, p0, :cond_0

    sub-int v1, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
