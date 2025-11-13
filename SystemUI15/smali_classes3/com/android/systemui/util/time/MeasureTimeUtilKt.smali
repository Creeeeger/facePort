.class public final Lcom/android/systemui/util/time/MeasureTimeUtilKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final measureTimeMillis(Lcom/android/systemui/util/time/SystemClock;Lkotlin/jvm/functions/Function0;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lkotlin/jvm/functions/Function0;",
            ")J"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0
.end method
