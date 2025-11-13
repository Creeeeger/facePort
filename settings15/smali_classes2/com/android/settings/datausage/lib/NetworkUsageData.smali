.class public final Lcom/android/settings/datausage/lib/NetworkUsageData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final endTime:J

.field public final startTime:J

.field public final timeRange:Landroid/util/Range;

.field public final usage:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/settings/datausage/lib/NetworkUsageData;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/datausage/lib/NetworkUsageData;-><init>(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    iput-wide p3, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    iput-wide p5, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    new-instance p5, Landroid/util/Range;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p5, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p5, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->timeRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v3, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    iget-wide v5, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    iget-wide v5, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    iget-wide p0, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final formatUsage(Landroid/content/Context;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p0

    new-instance v0, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v2, p0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iget-object v3, p0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x104055e

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unicodeWrap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iget-object p0, p0, Landroid/text/format/Formatter$BytesResult;->unitsContentDescription:Ljava/lang/String;

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkUsageData(startTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
