.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field public static final INFINITE:J

.field public static final NEG_INFINITE:J


# instance fields
.field public final rawValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    return-void
.end method

.method public static final addValuesMixedRanges-UwyO8pc(JJ)J
    .locals 10

    const v0, 0xf4240

    int-to-long v0, v0

    div-long v2, p2, v0

    add-long v4, p0, v2

    new-instance p0, Lkotlin/ranges/LongRange;

    const-wide v6, -0x431bde82d7aL

    const-wide v8, 0x431bde82d7aL

    invoke-direct {p0, v6, v7, v8, v9}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {p0, v4, v5}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result p0

    if-eqz p0, :cond_0

    mul-long/2addr v2, v0

    sub-long/2addr p2, v2

    mul-long/2addr v4, v0

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v6, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    if-ltz p3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-gt p3, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p3, v3

    const/4 v3, 0x1

    invoke-direct {v2, v3, p3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object p3

    :goto_0
    iget-boolean v2, p3, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, -0x1

    add-int/2addr p2, p3

    if-ltz p2, :cond_4

    :goto_2
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_2

    move p3, p2

    goto :goto_3

    :cond_2
    if-gez v2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v2

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 p2, p3, 0x1

    const/4 v0, 0x3

    if-nez p5, :cond_5

    if-ge p2, v0, :cond_5

    invoke-virtual {p0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    add-int/2addr p3, v0

    div-int/2addr p3, v0

    mul-int/2addr p3, v0

    invoke-virtual {p0, p1, v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Desired length "

    const-string p2, " is less than zero."

    invoke-static {p3, p1, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static compareTo-LRDsOJo(JJ)I
    .locals 6

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-ltz v4, :cond_2

    long-to-int v0, v0

    and-int/2addr v0, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/2addr v0, v5

    long-to-int p2, p2

    and-int/2addr p2, v5

    sub-int/2addr v0, p2

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    neg-int v0, v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    cmp-long p0, p0, p2

    if-gez p0, :cond_3

    const/4 v5, -0x1

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    const/4 v5, 0x0

    :cond_4
    :goto_1
    return v5
.end method

.method public static final getInWholeMilliseconds-impl(J)J
    .locals 2

    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    shr-long/2addr p0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    long-to-int v0, p0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    shr-long/2addr p0, v2

    const/16 v0, 0x3e8

    int-to-long v0, v0

    rem-long/2addr p0, v0

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    :goto_0
    long-to-int v1, p0

    goto :goto_1

    :cond_2
    shr-long/2addr p0, v2

    const v0, 0x3b9aca00

    int-to-long v0, v0

    rem-long/2addr p0, v0

    goto :goto_0

    :goto_1
    return v1
.end method

.method public static final getStorageUnit-impl(J)Lkotlin/time/DurationUnit;
    .locals 0

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    :goto_0
    return-object p0
.end method

.method public static final isInfinite-impl(J)Z
    .locals 2

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 7

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-wide p0

    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide p2

    :cond_3
    long-to-int v0, p0

    and-int/2addr v0, v1

    long-to-int v2, p2

    and-int/2addr v2, v1

    if-ne v0, v2, :cond_7

    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    add-long v1, p0, p2

    if-nez v0, :cond_5

    new-instance p0, Lkotlin/ranges/LongRange;

    const-wide p1, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v3, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {p0, p1, p2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {p0, v1, v2}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_1

    :cond_4
    const p0, 0xf4240

    int-to-long p0, p0

    div-long/2addr v1, p0

    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    goto :goto_1

    :cond_5
    new-instance p0, Lkotlin/ranges/LongRange;

    const-wide p1, -0x431bde82d7aL

    const-wide v3, 0x431bde82d7aL

    invoke-direct {p0, p1, p2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {p0, v1, v2}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0xf4240

    int-to-long p0, p0

    mul-long/2addr v1, p0

    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_1

    :cond_6
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    goto :goto_1

    :cond_7
    if-ne v0, v1, :cond_8

    shr-long/2addr p0, v1

    shr-long/2addr p2, v1

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_8
    shr-long/2addr p2, v1

    shr-long/2addr p0, v1

    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJ)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static final toDouble-impl(JLkotlin/time/DurationUnit;)D
    .locals 9

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1

    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    shr-long v0, p0, v0

    long-to-double v0, v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object p0

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {p1, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_2

    long-to-double p0, v5

    mul-double/2addr v0, p0

    :goto_0
    move-wide p0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {p0, v3, v4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr v0, p0

    goto :goto_0

    :goto_1
    return-wide p0
.end method

.method public static final toLong-impl(JLkotlin/time/DurationUnit;)J
    .locals 2

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    shr-long v0, p0, v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Lkotlin/time/DurationUnit;

    move-result-object p0

    invoke-virtual {p2}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 17

    move-wide/from16 v0, p0

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const-string v0, "0s"

    goto/16 :goto_c

    :cond_0
    sget-wide v7, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v7, v0, v7

    if-nez v7, :cond_1

    const-string v0, "Infinity"

    goto/16 :goto_c

    :cond_1
    sget-wide v7, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v7, v0, v7

    if-nez v7, :cond_2

    const-string v0, "-Infinity"

    goto/16 :goto_c

    :cond_2
    if-gez v6, :cond_3

    move v8, v3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_4

    const/16 v9, 0x2d

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-gez v6, :cond_5

    shr-long v9, v0, v3

    neg-long v9, v9

    long-to-int v0, v0

    and-int/2addr v0, v3

    shl-long/2addr v9, v3

    int-to-long v0, v0

    add-long/2addr v0, v9

    sget v6, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    :cond_5
    sget-object v6, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v6}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    sget-object v6, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v6}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v11

    const/16 v6, 0x18

    int-to-long v13, v6

    rem-long/2addr v11, v13

    long-to-int v6, v11

    :goto_1
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v11

    const/16 v12, 0x3c

    if-eqz v11, :cond_7

    move/from16 v16, v8

    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    sget-object v11, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v11}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    move/from16 v16, v8

    int-to-long v7, v12

    rem-long/2addr v13, v7

    long-to-int v7, v13

    :goto_2
    invoke-static {v0, v1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v8}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    int-to-long v11, v12

    rem-long/2addr v13, v11

    long-to-int v8, v13

    :goto_3
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v11

    cmp-long v0, v9, v4

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v6, :cond_a

    move v1, v3

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    if-eqz v7, :cond_b

    move v4, v3

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    if-nez v8, :cond_d

    if-eqz v11, :cond_c

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    move v5, v3

    :goto_8
    if-eqz v0, :cond_e

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v3

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    const/16 v10, 0x20

    if-nez v1, :cond_f

    if-eqz v0, :cond_11

    if-nez v4, :cond_f

    if-eqz v5, :cond_11

    :cond_f
    add-int/lit8 v12, v9, 0x1

    if-lez v9, :cond_10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x68

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v12

    :cond_11
    if-nez v4, :cond_12

    if-eqz v5, :cond_14

    if-nez v1, :cond_12

    if-eqz v0, :cond_14

    :cond_12
    add-int/lit8 v6, v9, 0x1

    if-lez v9, :cond_13

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x6d

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v6

    :cond_14
    if-eqz v5, :cond_1a

    add-int/lit8 v5, v9, 0x1

    if-lez v9, :cond_15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    if-nez v8, :cond_19

    if-nez v0, :cond_19

    if-nez v1, :cond_19

    if-eqz v4, :cond_16

    goto :goto_a

    :cond_16
    const v0, 0xf4240

    if-lt v11, v0, :cond_17

    div-int v10, v11, v0

    rem-int/2addr v11, v0

    const/4 v14, 0x0

    const/4 v12, 0x6

    const-string v13, "ms"

    move-object v9, v15

    invoke-static/range {v9 .. v14}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_b

    :cond_17
    if-lt v11, v2, :cond_18

    div-int/lit16 v10, v11, 0x3e8

    rem-int/2addr v11, v2

    const/4 v14, 0x0

    const/4 v12, 0x3

    const-string v13, "us"

    move-object v9, v15

    invoke-static/range {v9 .. v14}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_b

    :cond_18
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ns"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v14, 0x0

    const/16 v12, 0x9

    const-string v13, "s"

    move-object v9, v15

    move v10, v8

    invoke-static/range {v9 .. v14}, Lkotlin/time/Duration;->appendFractional-impl(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_b
    move v9, v5

    :cond_1a
    if-eqz v16, :cond_1b

    if-le v9, v3, :cond_1b

    const/16 v0, 0x28

    invoke-virtual {v15, v3, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lkotlin/time/Duration;

    iget-wide v0, p1, Lkotlin/time/Duration;->rawValue:J

    iget-wide p0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    instance-of p0, p1, Lkotlin/time/Duration;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/time/Duration;

    iget-wide p0, p1, Lkotlin/time/Duration;->rawValue:J

    cmp-long p0, v0, p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
