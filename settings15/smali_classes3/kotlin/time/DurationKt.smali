.class public abstract Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final toDuration(ILkotlin/time/DurationUnit;)J
    .locals 10

    const-string/jumbo v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    int-to-long v2, p0

    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, p1, p0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    shl-long/2addr p0, v1

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    goto :goto_0

    :cond_0
    int-to-long v2, p0

    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-wide v4, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v4, v5, p0, p1}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v4

    new-instance v0, Lkotlin/ranges/LongRange;

    neg-long v6, v4

    invoke-direct {v0, v6, v7, v4, v5}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    cmp-long v4, v6, v2

    if-gtz v4, :cond_1

    iget-wide v4, v0, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    invoke-static {v2, v3, p1, p0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    shl-long/2addr p0, v1

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-string/jumbo v0, "targetUnit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {p0, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide v6, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    shl-long/2addr p0, v1

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    :goto_0
    return-wide p0
.end method
