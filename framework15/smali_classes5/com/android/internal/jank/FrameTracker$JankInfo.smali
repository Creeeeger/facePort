.class Lcom/android/internal/jank/FrameTracker$JankInfo;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JankInfo"
.end annotation


# instance fields
.field blacklist frameVsyncId:J

.field blacklist hwuiCallbackFired:Z

.field blacklist isFirstFrame:Z

.field blacklist jankType:I

.field blacklist refreshRate:I

.field blacklist surfaceControlCallbackFired:Z

.field blacklist totalDurationNanos:J


# direct methods
.method private constructor blacklist <init>(JZZIIJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iput-boolean p3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    iput-boolean p4, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    iput p5, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    iput p6, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    iput-wide p7, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    iput-boolean p9, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    return-void
.end method

.method static blacklist createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 11

    new-instance v10, Lcom/android/internal/jank/FrameTracker$JankInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v10

    move-wide v1, p0

    move-wide v7, p2

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(JZZIIJZ)V

    return-object v10
.end method

.method static blacklist createFromSurfaceControlCallback(JII)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 11

    new-instance v10, Lcom/android/internal/jank/FrameTracker$JankInfo;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v10

    move-wide v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(JZZIIJZ)V

    return-object v10
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_0
    const-string v1, "SURFACE_FLINGER_SCHEDULING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string v1, "PREDICTION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    const-string v1, "JANK_APP_DEADLINE_MISSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    const-string v1, "JANK_SURFACEFLINGER_GPU_DEADLINE_MISSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_4
    const-string v1, "JANK_SURFACEFLINGER_DEADLINE_MISSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_5
    const-string v1, "DISPLAY_HAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_6
    const-string v1, "JANK_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
