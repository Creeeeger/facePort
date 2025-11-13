.class public Landroid/view/Choreographer$FrameData;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameData"
.end annotation


# instance fields
.field private blacklist mFrameTimeNanos:J

.field private blacklist mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

.field private blacklist mInCallback:Z

.field private blacklist mPreferredFrameTimelineIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    return-void
.end method

.method private blacklist allocateFrameTimelines(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v0, v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    new-instance v2, Landroid/view/Choreographer$FrameTimeline;

    invoke-direct {v2}, Landroid/view/Choreographer$FrameTimeline;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist checkInCallback()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FrameData is not valid outside of the vsync callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getFrameTimeNanos()J
    .locals 2

    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method public whitelist getFrameTimelines()[Landroid/view/Choreographer$FrameTimeline;
    .locals 1

    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method public whitelist getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;
    .locals 2

    invoke-direct {p0}, Landroid/view/Choreographer$FrameData;->checkInCallback()V

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method blacklist setInCallback(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/view/Choreographer$FrameData;->mInCallback:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/Choreographer$FrameTimeline;->setInCallback(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;
    .locals 10

    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelinesLength:I

    invoke-direct {p0, v0}, Landroid/view/Choreographer$FrameData;->allocateFrameTimelines(I)V

    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    iget v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v3, v2, v0

    iget-wide v4, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iget-wide v8, v1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    invoke-virtual/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;->update(JJJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method blacklist update(JLandroid/view/DisplayEventReceiver;J)Landroid/view/Choreographer$FrameTimeline;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v2, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v1

    add-long/2addr v1, p4

    :goto_0
    iget-object v3, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/view/Choreographer$FrameTimeline;->-$$Nest$fgetmDeadlineNanos(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gez v5, :cond_2

    nop

    invoke-virtual {p3}, Landroid/view/DisplayEventReceiver;->getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v6, "Choreographer"

    const-string v7, "Could not get latest VsyncEventData. Did SurfaceFlinger crash?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v5}, Landroid/view/Choreographer$FrameData;->update(JLandroid/view/DisplayEventReceiver$VsyncEventData;)Landroid/view/Choreographer$FrameTimeline;

    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/Choreographer$FrameData;->update(JI)V

    :goto_2
    iget-object v5, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v6, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    aget-object v5, v5, v6

    return-object v5
.end method

.method blacklist update(JI)V
    .locals 0

    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    iput p3, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimelineIndex:I

    return-void
.end method
