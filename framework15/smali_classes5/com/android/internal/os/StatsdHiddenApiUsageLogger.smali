.class Lcom/android/internal/os/StatsdHiddenApiUsageLogger;
.super Ljava/lang/Object;
.source "StatsdHiddenApiUsageLogger.java"

# interfaces
.implements Ldalvik/system/VMRuntime$HiddenApiUsageLogger;


# static fields
.field private static final blacklist sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;


# instance fields
.field private blacklist mHiddenApiAccessLogSampleRate:I

.field private blacklist mHiddenApiAccessStatslogSampleRate:I

.field private final blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    invoke-direct {v0}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;-><init>()V

    sput-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    iput v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    return-void
.end method

.method static blacklist getInstance()Lcom/android/internal/os/StatsdHiddenApiUsageLogger;
    .locals 1

    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    return-object v0
.end method

.method private blacklist logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    nop

    :goto_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x56f

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x572

    invoke-virtual {v1, v2, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x570

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x571

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist newLogUsage(Ljava/lang/String;IZ)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    nop

    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0xb2

    invoke-static {v2, v1, p1, v0, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist setHiddenApiAccessLogSampleRates(II)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    iput p0, v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    iput p1, v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    return-void
.end method


# virtual methods
.method public blacklist test-api hiddenApiUsed(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    iget v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    iget v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->newLogUsage(Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method
