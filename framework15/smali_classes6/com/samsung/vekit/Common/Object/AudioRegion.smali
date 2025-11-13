.class public Lcom/samsung/vekit/Common/Object/AudioRegion;
.super Ljava/lang/Object;
.source "AudioRegion.java"


# instance fields
.field private blacklist endTime:J

.field private blacklist fadeInDuration:J

.field private blacklist fadeOutDuration:J

.field private blacklist startTime:J

.field private blacklist volume:F


# direct methods
.method public constructor blacklist <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    return-void
.end method

.method public constructor blacklist <init>(JJFJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    iput p5, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    iput-wide p6, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    iput-wide p8, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/vekit/Common/Object/AudioRegion;
    .locals 11

    new-instance v10, Lcom/samsung/vekit/Common/Object/AudioRegion;

    iget-wide v1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    iget-wide v3, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    iget v5, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    iget-wide v6, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    iget-wide v8, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/vekit/Common/Object/AudioRegion;-><init>(JJFJJ)V

    return-object v10
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/AudioRegion;->clone()Lcom/samsung/vekit/Common/Object/AudioRegion;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    return-wide v0
.end method

.method public blacklist getFadeInDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    return-wide v0
.end method

.method public blacklist getFadeOutDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    return-wide v0
.end method

.method public blacklist getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    return-wide v0
.end method

.method public blacklist getVolume()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    return v0
.end method

.method public blacklist setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->endTime:J

    return-void
.end method

.method public blacklist setFadeInDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeInDuration:J

    return-void
.end method

.method public blacklist setFadeOutDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->fadeOutDuration:J

    return-void
.end method

.method public blacklist setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->startTime:J

    return-void
.end method

.method public blacklist setVolume(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/AudioRegion;->volume:F

    return-void
.end method
