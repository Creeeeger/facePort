.class public final Landroid/os/PerformanceHintManager;
.super Ljava/lang/Object;
.source "PerformanceHintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PerformanceHintManager$Session;
    }
.end annotation


# instance fields
.field private final blacklist mNativeManagerPtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeCloseSession(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/PerformanceHintManager;->nativeCloseSession(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetThreadIds(J)[I
    .locals 0

    invoke-static {p0, p1}, Landroid/os/PerformanceHintManager;->nativeGetThreadIds(J)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReportActualWorkDuration(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/os/PerformanceHintManager;->nativeReportActualWorkDuration(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReportActualWorkDuration(JJJJJ)V
    .locals 0

    invoke-static/range {p0 .. p9}, Landroid/os/PerformanceHintManager;->nativeReportActualWorkDuration(JJJJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSendHint(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/os/PerformanceHintManager;->nativeSendHint(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetPreferPowerEfficiency(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/os/PerformanceHintManager;->nativeSetPreferPowerEfficiency(JZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetThreads(J[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/os/PerformanceHintManager;->nativeSetThreads(J[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeUpdateTargetWorkDuration(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/os/PerformanceHintManager;->nativeUpdateTargetWorkDuration(JJ)V

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/PerformanceHintManager;->mNativeManagerPtr:J

    return-void
.end method

.method public static blacklist create()Landroid/os/PerformanceHintManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/PerformanceHintManager;->nativeAcquireManager()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/PerformanceHintManager;

    invoke-direct {v2, v0, v1}, Landroid/os/PerformanceHintManager;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v2, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string/jumbo v3, "performance_hint"

    invoke-direct {v2, v3}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native blacklist nativeAcquireManager()J
.end method

.method private static native blacklist nativeCloseSession(J)V
.end method

.method private static native blacklist nativeCreateSession(J[IJ)J
.end method

.method private static native blacklist nativeGetPreferredUpdateRateNanos(J)J
.end method

.method private static native blacklist nativeGetThreadIds(J)[I
.end method

.method private static native blacklist nativeReportActualWorkDuration(JJ)V
.end method

.method private static native blacklist nativeReportActualWorkDuration(JJJJJ)V
.end method

.method private static native blacklist nativeSendHint(JI)V
.end method

.method private static native blacklist nativeSetPreferPowerEfficiency(JZ)V
.end method

.method private static native blacklist nativeSetThreads(J[I)V
.end method

.method private static native blacklist nativeUpdateTargetWorkDuration(JJ)V
.end method


# virtual methods
.method public whitelist createHintSession([IJ)Landroid/os/PerformanceHintManager$Session;
    .locals 4

    const-string/jumbo v0, "tids cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-eqz v0, :cond_1

    long-to-float v0, p2

    const-string/jumbo v1, "the hint target duration should be positive."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iget-wide v0, p0, Landroid/os/PerformanceHintManager;->mNativeManagerPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/PerformanceHintManager;->nativeCreateSession(J[IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Landroid/os/PerformanceHintManager$Session;

    invoke-direct {v2, v0, v1}, Landroid/os/PerformanceHintManager$Session;-><init>(J)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "thread id list can\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPreferredUpdateRateNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/os/PerformanceHintManager;->mNativeManagerPtr:J

    invoke-static {v0, v1}, Landroid/os/PerformanceHintManager;->nativeGetPreferredUpdateRateNanos(J)J

    move-result-wide v0

    return-wide v0
.end method
