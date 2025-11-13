.class public Landroid/view/ViewFrameInfo;
.super Ljava/lang/Object;
.source "ViewFrameInfo.java"


# instance fields
.field public blacklist drawStart:J

.field public blacklist flags:J

.field private blacklist mInputEventId:I

.field private blacklist mViewsMeasuredCounts:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAndIncreaseViewMeasuredCount()I
    .locals 1

    iget v0, p0, Landroid/view/ViewFrameInfo;->mViewsMeasuredCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewFrameInfo;->mViewsMeasuredCounts:I

    return v0
.end method

.method public blacklist markDrawStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    return-void
.end method

.method public blacklist populateFrameInfo(Landroid/graphics/FrameInfo;)V
    .locals 6

    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget-wide v4, p0, Landroid/view/ViewFrameInfo;->flags:J

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/16 v1, 0x8

    iget-wide v2, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    aput-wide v2, v0, v1

    iget-object v0, p1, Landroid/graphics/FrameInfo;->frameInfo:[J

    iget v1, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    int-to-long v1, v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    return-void
.end method

.method public blacklist reset()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->drawStart:J

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    iput-wide v0, p0, Landroid/view/ViewFrameInfo;->flags:J

    iput v2, p0, Landroid/view/ViewFrameInfo;->mViewsMeasuredCounts:I

    return-void
.end method

.method public blacklist setInputEvent(I)V
    .locals 0

    iput p1, p0, Landroid/view/ViewFrameInfo;->mInputEventId:I

    return-void
.end method
