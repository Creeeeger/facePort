.class public Lcom/samsung/vekit/Common/Object/DoodlePoint;
.super Ljava/lang/Object;
.source "DoodlePoint.java"


# instance fields
.field private blacklist pressure:F

.field private blacklist tanX:F

.field private blacklist tanY:F

.field private blacklist timeStamp:J

.field private blacklist x:F

.field private blacklist y:F


# direct methods
.method public constructor blacklist <init>(FFFFFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->x:F

    iput p2, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->y:F

    iput p3, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->pressure:F

    iput p4, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanX:F

    iput p5, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanY:F

    iput-wide p6, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->timeStamp:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/DoodlePoint;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/DoodlePoint;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->x:F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/DoodlePoint;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->y:F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/DoodlePoint;->getPressure()F

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->pressure:F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/DoodlePoint;->getTanX()F

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanX:F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/DoodlePoint;->getTanY()F

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanY:F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/DoodlePoint;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->timeStamp:J

    return-void
.end method


# virtual methods
.method public blacklist getPressure()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->pressure:F

    return v0
.end method

.method public blacklist getTanX()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanX:F

    return v0
.end method

.method public blacklist getTanY()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanY:F

    return v0
.end method

.method public blacklist getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->timeStamp:J

    return-wide v0
.end method

.method public blacklist getX()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->x:F

    return v0
.end method

.method public blacklist getY()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->y:F

    return v0
.end method

.method public blacklist setPosition(FF)Lcom/samsung/vekit/Common/Object/DoodlePoint;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->x:F

    iput p2, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->y:F

    return-object p0
.end method

.method public blacklist setPressure(F)Lcom/samsung/vekit/Common/Object/DoodlePoint;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->pressure:F

    return-object p0
.end method

.method public blacklist setTanX(F)Lcom/samsung/vekit/Common/Object/DoodlePoint;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanX:F

    return-object p0
.end method

.method public blacklist setTanY(F)Lcom/samsung/vekit/Common/Object/DoodlePoint;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanY:F

    return-object p0
.end method

.method public blacklist setTangent(FF)Lcom/samsung/vekit/Common/Object/DoodlePoint;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanX:F

    iput p2, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->tanY:F

    return-object p0
.end method

.method public blacklist setTimeStamp(J)Lcom/samsung/vekit/Common/Object/DoodlePoint;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->timeStamp:J

    return-object p0
.end method

.method public blacklist setX(F)Lcom/samsung/vekit/Common/Object/DoodlePoint;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->x:F

    return-object p0
.end method

.method public blacklist setY(F)Lcom/samsung/vekit/Common/Object/DoodlePoint;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodlePoint;->y:F

    return-object p0
.end method
