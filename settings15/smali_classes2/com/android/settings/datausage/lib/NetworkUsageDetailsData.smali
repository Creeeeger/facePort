.class public final Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final AllZero:Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;


# instance fields
.field public final backgroundUsage:J

.field public final foregroundUsage:J

.field public final range:Landroid/util/Range;

.field public final totalUsage:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    new-instance v1, Landroid/util/Range;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;-><init>(Landroid/util/Range;JJJ)V

    sput-object v8, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->AllZero:Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    return-void
.end method

.method public constructor <init>(Landroid/util/Range;JJJ)V
    .locals 1

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->range:Landroid/util/Range;

    iput-wide p2, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->totalUsage:J

    iput-wide p4, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->foregroundUsage:J

    iput-wide p6, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->backgroundUsage:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->range:Landroid/util/Range;

    iget-object v3, p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->range:Landroid/util/Range;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->totalUsage:J

    iget-wide v5, p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->totalUsage:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->foregroundUsage:J

    iget-wide v5, p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->foregroundUsage:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->backgroundUsage:J

    iget-wide p0, p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->backgroundUsage:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->range:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->totalUsage:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->foregroundUsage:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->backgroundUsage:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->range:Landroid/util/Range;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkUsageDetailsData(range="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", totalUsage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->totalUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", foregroundUsage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->foregroundUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", backgroundUsage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->backgroundUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
