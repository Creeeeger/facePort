.class public Lcom/samsung/app/video/editor/external/CubicBezierPoints;
.super Ljava/lang/Object;
.source "CubicBezierPoints.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field blacklist cp1:Landroid/graphics/PointF;

.field blacklist cp2:Landroid/graphics/PointF;


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .locals 1
    .param p1, "cp1x"    # F
    .param p2, "cp1y"    # F
    .param p3, "cp2x"    # F
    .param p4, "cp2y"    # F

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp1:Landroid/graphics/PointF;

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp2:Landroid/graphics/PointF;

    .line 15
    return-void
.end method


# virtual methods
.method public blacklist getCp1()Landroid/graphics/PointF;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp1:Landroid/graphics/PointF;

    return-object v0
.end method

.method public blacklist getCp2()Landroid/graphics/PointF;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp2:Landroid/graphics/PointF;

    return-object v0
.end method

.method public blacklist setCp1(FF)V
    .locals 1
    .param p1, "cpx"    # F
    .param p2, "cpy"    # F

    .line 27
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp1:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 28
    return-void
.end method

.method public blacklist setCp1(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "cp"    # Landroid/graphics/PointF;

    .line 22
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp1:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 23
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp1:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 24
    return-void
.end method

.method public blacklist setCp2(FF)V
    .locals 1
    .param p1, "cpx"    # F
    .param p2, "cpy"    # F

    .line 39
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp2:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 40
    return-void
.end method

.method public blacklist setCp2(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "cp"    # Landroid/graphics/PointF;

    .line 35
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp2:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 36
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/CubicBezierPoints;->cp2:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 37
    return-void
.end method
