.class public Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
.super Ljava/lang/Object;
.source "PerspectiveViewParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field blacklist degreeX:F

.field blacklist degreeY:F

.field blacklist degreeZ:F

.field blacklist perspectiveMatrix:[F

.field blacklist positionX:F

.field blacklist positionY:F

.field blacklist positionZ:F

.field blacklist scaleX:F

.field blacklist scaleY:F

.field blacklist scaleZ:F

.field blacklist userRotation:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static blacklist makeCopy(Lcom/samsung/app/video/editor/external/PerspectiveViewParams;Lcom/samsung/app/video/editor/external/PerspectiveViewParams;)V
    .locals 1
    .param p0, "orgParams"    # Lcom/samsung/app/video/editor/external/PerspectiveViewParams;
    .param p1, "newParams"    # Lcom/samsung/app/video/editor/external/PerspectiveViewParams;

    .line 28
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeX:F

    .line 29
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeY:F

    .line 30
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeZ:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeZ:F

    .line 31
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleX:F

    .line 32
    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleY:F

    .line 33
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleZ:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleZ:F

    .line 34
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->userRotation:I

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->userRotation:I

    .line 35
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->perspectiveMatrix:[F

    iput-object v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->perspectiveMatrix:[F

    .line 36
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionX:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionX:F

    .line 37
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionY:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionY:F

    .line 38
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionZ:F

    iput v0, p1, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionZ:F

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist getDegreeX()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeX:F

    return v0
.end method

.method public blacklist getDegreeY()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeY:F

    return v0
.end method

.method public blacklist getDegreeZ()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeZ:F

    return v0
.end method

.method public blacklist getPerspectiveMatrix()[F
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->perspectiveMatrix:[F

    return-object v0
.end method

.method public blacklist getPositionX()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionX:F

    return v0
.end method

.method public blacklist getPositionY()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionY:F

    return v0
.end method

.method public blacklist getPositionZ()F
    .locals 1

    .line 122
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionZ:F

    return v0
.end method

.method public blacklist getScaleX()F
    .locals 1

    .line 67
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleX:F

    return v0
.end method

.method public blacklist getScaleY()F
    .locals 1

    .line 75
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleY:F

    return v0
.end method

.method public blacklist getScaleZ()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleZ:F

    return v0
.end method

.method public blacklist getUserRotation()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->userRotation:I

    return v0
.end method

.method public blacklist setDegreeX(F)V
    .locals 0
    .param p1, "degreeX"    # F

    .line 47
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeX:F

    .line 48
    return-void
.end method

.method public blacklist setDegreeY(F)V
    .locals 0
    .param p1, "degreeY"    # F

    .line 55
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeY:F

    .line 56
    return-void
.end method

.method public blacklist setDegreeZ(F)V
    .locals 0
    .param p1, "degreeZ"    # F

    .line 63
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->degreeZ:F

    .line 64
    return-void
.end method

.method public blacklist setPerspectiveMatrix([F)V
    .locals 0
    .param p1, "perspectiveMatrix"    # [F

    .line 104
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->perspectiveMatrix:[F

    .line 105
    return-void
.end method

.method public blacklist setPosition(FFF)V
    .locals 0
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F
    .param p3, "positionZ"    # F

    .line 108
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionX:F

    .line 109
    iput p2, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionY:F

    .line 110
    iput p3, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->positionZ:F

    .line 111
    return-void
.end method

.method public blacklist setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .line 71
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleX:F

    .line 72
    return-void
.end method

.method public blacklist setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .line 79
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleY:F

    .line 80
    return-void
.end method

.method public blacklist setScaleZ(F)V
    .locals 0
    .param p1, "scaleZ"    # F

    .line 87
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->scaleZ:F

    .line 88
    return-void
.end method

.method public blacklist setUserRotation(I)V
    .locals 0
    .param p1, "userRotation"    # I

    .line 95
    iput p1, p0, Lcom/samsung/app/video/editor/external/PerspectiveViewParams;->userRotation:I

    .line 96
    return-void
.end method
