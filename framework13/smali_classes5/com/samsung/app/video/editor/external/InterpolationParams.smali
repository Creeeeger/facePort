.class public Lcom/samsung/app/video/editor/external/InterpolationParams;
.super Ljava/lang/Object;
.source "InterpolationParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

.field private blacklist duration:I

.field private blacklist interpolation:I

.field private blacklist interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "InterpolationParams"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(ILcom/samsung/app/video/editor/external/CurveType;Lcom/samsung/app/video/editor/external/CubicBezierPoints;)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "curvetype"    # Lcom/samsung/app/video/editor/external/CurveType;
    .param p3, "controlpoints"    # Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "InterpolationParams"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->TAG:Ljava/lang/String;

    .line 16
    iput p1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    .line 17
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    .line 18
    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/CurveType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolation:I

    .line 19
    iput-object p3, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 20
    return-void
.end method


# virtual methods
.method blacklist copy()Lcom/samsung/app/video/editor/external/InterpolationParams;
    .locals 2

    .line 27
    new-instance v0, Lcom/samsung/app/video/editor/external/InterpolationParams;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/InterpolationParams;-><init>()V

    .line 28
    .local v0, "interpolationParams":Lcom/samsung/app/video/editor/external/InterpolationParams;
    iget v1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    .line 29
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    .line 30
    iget v1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolation:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolation:I

    .line 31
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 32
    return-object v0
.end method

.method public blacklist getControlPoints()Lcom/samsung/app/video/editor/external/CubicBezierPoints;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    return-object v0
.end method

.method public blacklist getDuration()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    return v0
.end method

.method public blacklist getInterpolation()Lcom/samsung/app/video/editor/external/CurveType;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    return-object v0
.end method

.method public blacklist setControlPoints(Lcom/samsung/app/video/editor/external/CubicBezierPoints;)V
    .locals 0
    .param p1, "controlPoints"    # Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 57
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->controlPoints:Lcom/samsung/app/video/editor/external/CubicBezierPoints;

    .line 58
    return-void
.end method

.method public blacklist setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 40
    iput p1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->duration:I

    .line 41
    return-void
.end method

.method public blacklist setInterpolation(Lcom/samsung/app/video/editor/external/CurveType;)V
    .locals 1
    .param p1, "interpolation"    # Lcom/samsung/app/video/editor/external/CurveType;

    .line 48
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolationCurveType:Lcom/samsung/app/video/editor/external/CurveType;

    .line 49
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/CurveType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/InterpolationParams;->interpolation:I

    .line 50
    return-void
.end method
