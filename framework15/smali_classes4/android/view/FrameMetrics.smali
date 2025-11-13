.class public final Landroid/view/FrameMetrics;
.super Ljava/lang/Object;
.source "FrameMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameMetrics$Index;,
        Landroid/view/FrameMetrics$Metric;
    }
.end annotation


# static fields
.field public static final whitelist ANIMATION_DURATION:I = 0x2

.field public static final whitelist COMMAND_ISSUE_DURATION:I = 0x6

.field public static final whitelist DEADLINE:I = 0xd

.field public static final whitelist DRAW_DURATION:I = 0x4

.field private static final greylist-max-o DURATIONS:[I

.field public static final whitelist FIRST_DRAW_FRAME:I = 0x9

.field public static final whitelist GPU_DURATION:I = 0xc

.field public static final whitelist INPUT_HANDLING_DURATION:I = 0x1

.field public static final whitelist INTENDED_VSYNC_TIMESTAMP:I = 0xa

.field public static final whitelist LAYOUT_MEASURE_DURATION:I = 0x3

.field public static final whitelist SWAP_BUFFERS_DURATION:I = 0x7

.field public static final whitelist SYNC_DURATION:I = 0x5

.field public static final whitelist TOTAL_DURATION:I = 0x8

.field public static final whitelist UNKNOWN_DELAY_DURATION:I = 0x0

.field public static final whitelist VSYNC_TIMESTAMP:I = 0xb


# instance fields
.field public final greylist-max-r mTimingData:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/FrameMetrics;->DURATIONS:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0xc
        0xd
        0xe
        0xe
        0xf
        0xf
        0x14
        0x2
        0x10
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x16
        0x13
        0x2
        0x9
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/FrameMetrics;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v0, p1, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public whitelist getMetric(I)J
    .locals 6

    const-wide/16 v0, -0x1

    if-ltz p1, :cond_6

    const/16 v2, 0xd

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, v4

    :goto_0
    return-wide v2

    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0

    :cond_4
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0

    :cond_5
    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    sget-object v2, Landroid/view/FrameMetrics;->DURATIONS:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aget-wide v1, v1, v2

    iget-object v3, p0, Landroid/view/FrameMetrics;->mTimingData:[J

    sget-object v4, Landroid/view/FrameMetrics;->DURATIONS:[I

    aget v4, v4, v0

    aget-wide v3, v3, v4

    sub-long/2addr v1, v3

    return-wide v1

    :cond_6
    :goto_1
    return-wide v0
.end method
