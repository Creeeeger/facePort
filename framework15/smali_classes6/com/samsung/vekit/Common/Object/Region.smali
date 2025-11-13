.class public Lcom/samsung/vekit/Common/Object/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private blacklist endTime:J

.field private blacklist isFrcOn:Z

.field private blacklist speed:F

.field private blacklist startTime:J


# direct methods
.method public constructor blacklist <init>(JJFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    iput-wide p3, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    iput p5, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    iput-boolean p6, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    return-void
.end method


# virtual methods
.method public blacklist getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    return-wide v0
.end method

.method public blacklist getRegion()Lcom/samsung/vekit/Common/Object/Region;
    .locals 0

    return-object p0
.end method

.method public blacklist getSpeed()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    return v0
.end method

.method public blacklist getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    return-wide v0
.end method

.method public blacklist isFrcOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    return v0
.end method

.method public blacklist setEndTime(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    return-void
.end method

.method public blacklist setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Region;->endTime:J

    return-void
.end method

.method public blacklist setFrcOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/vekit/Common/Object/Region;->isFrcOn:Z

    return-void
.end method

.method public blacklist setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/Region;->speed:F

    return-void
.end method

.method public blacklist setStartTime(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    return-void
.end method

.method public blacklist setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/Region;->startTime:J

    return-void
.end method
