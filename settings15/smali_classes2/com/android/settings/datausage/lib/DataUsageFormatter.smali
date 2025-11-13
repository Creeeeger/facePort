.class public final Lcom/android/settings/datausage/lib/DataUsageFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/lib/DataUsageFormatter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final formatDataUsage(J)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/lib/DataUsageFormatter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    new-instance p2, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/lib/DataUsageFormatter;->context:Landroid/content/Context;

    iget-object v2, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iget-object v3, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x104055e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unicodeWrap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/datausage/lib/DataUsageFormatter;->context:Landroid/content/Context;

    iget-object v1, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->unitsContentDescription:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p0}, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
