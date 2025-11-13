.class public Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver$VsyncEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# instance fields
.field public blacklist deadline:J

.field public blacklist expectedPresentationTime:J

.field public blacklist vsyncId:J


# direct methods
.method constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    iget-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    return-void
.end method

.method constructor blacklist <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iput-wide p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iput-wide p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iput-wide p5, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-void
.end method


# virtual methods
.method blacklist copyFrom(Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;)V
    .locals 2

    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentationTime:J

    iget-wide v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-void
.end method
