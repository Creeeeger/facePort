.class public Lcom/samsung/app/video/editor/external/DoodlePoints;
.super Ljava/lang/Object;
.source "DoodlePoints.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blacklist mPressure:F

.field private blacklist mTanX:F

.field private blacklist mTanY:F

.field private blacklist mTimeStamp:J

.field private blacklist mX:F

.field private blacklist mY:F


# direct methods
.method public constructor blacklist <init>(FFFFFJ)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pressure"    # F
    .param p4, "tanX"    # F
    .param p5, "tanY"    # F
    .param p6, "timestamp"    # J

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mX:F

    .line 22
    iput p2, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mY:F

    .line 23
    iput p3, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mPressure:F

    .line 24
    iput p4, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanX:F

    .line 25
    iput p5, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanY:F

    .line 26
    iput-wide p6, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTimeStamp:J

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/app/video/editor/external/DoodlePoints;)V
    .locals 2
    .param p1, "doodlePoints"    # Lcom/samsung/app/video/editor/external/DoodlePoints;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodlePoints;->mX:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mX:F

    .line 31
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodlePoints;->mY:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mY:F

    .line 32
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodlePoints;->mPressure:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mPressure:F

    .line 33
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanX:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanX:F

    .line 34
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanY:F

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanY:F

    .line 35
    iget-wide v0, p1, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTimeStamp:J

    iput-wide v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTimeStamp:J

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getPressure()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mPressure:F

    return v0
.end method

.method public blacklist getTanX()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanX:F

    return v0
.end method

.method public blacklist getTanY()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanY:F

    return v0
.end method

.method public blacklist getTimestamp()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTimeStamp:J

    return-wide v0
.end method

.method public blacklist getX()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mX:F

    return v0
.end method

.method public blacklist getY()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mY:F

    return v0
.end method

.method public blacklist setPos(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 40
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mX:F

    .line 41
    iput p2, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mY:F

    .line 42
    return-void
.end method

.method public blacklist setTan(FF)V
    .locals 0
    .param p1, "tanX"    # F
    .param p2, "tanY"    # F

    .line 45
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanX:F

    .line 46
    iput p2, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTanY:F

    .line 47
    return-void
.end method

.method public blacklist setTimeStamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 50
    iput-wide p1, p0, Lcom/samsung/app/video/editor/external/DoodlePoints;->mTimeStamp:J

    .line 51
    return-void
.end method
