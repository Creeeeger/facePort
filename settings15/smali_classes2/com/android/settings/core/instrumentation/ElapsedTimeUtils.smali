.class public abstract Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final DEFAULT_SETUP_TIME:J = -0x1L

.field public static sSuwFinishedTimeStamp:Ljava/util/Optional;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->sSuwFinishedTimeStamp:Ljava/util/Optional;

    return-void
.end method

.method public static getElapsedTime(J)J
    .locals 5

    sget-object v0, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->sSuwFinishedTimeStamp:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "ElapsedTimeUtils"

    const-string p1, "getElapsedTime: sSuwFinishedTimeStamp is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    sget-object v0, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->sSuwFinishedTimeStamp:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->sSuwFinishedTimeStamp:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr p0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-lez v0, :cond_1

    move-wide v1, p0

    :cond_1
    return-wide v1
.end method

.method public static getSuwFinishedTimestamp(Landroid/content/Context;)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "elapsed_time_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "suw_finished_time_ms"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
