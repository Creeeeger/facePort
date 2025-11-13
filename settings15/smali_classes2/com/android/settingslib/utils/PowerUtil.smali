.class public abstract Lcom/android/settingslib/utils/PowerUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final FIFTEEN_MINUTES_MILLIS:J

.field public static final ONE_DAY_MILLIS:J

.field public static final ONE_HOUR_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    const-wide/16 v4, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    return-void
.end method

.method public static getTargetTimeShortString(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 2

    add-long/2addr p3, p1

    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    add-long/2addr p1, p3

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    div-long/2addr p1, p3

    mul-long/2addr p3, p1

    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static roundTimeToNearestThreshold(JJ)J
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    rem-long v0, p0, p2

    const-wide/16 v2, 0x2

    div-long v2, p2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    sub-long/2addr p0, v0

    return-wide p0

    :cond_0
    sub-long/2addr p0, v0

    add-long/2addr p0, p2

    return-wide p0
.end method
