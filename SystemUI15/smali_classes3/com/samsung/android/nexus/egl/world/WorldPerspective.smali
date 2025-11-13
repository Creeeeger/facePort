.class public final Lcom/samsung/android/nexus/egl/world/WorldPerspective;
.super Lcom/samsung/android/nexus/egl/world/BaseWorld;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/nexus/egl/world/BaseWorld;-><init>()V

    if-le v2, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v5, v3, 0x2

    int-to-float v10, v5

    iget-object v6, v0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    int-to-float v1, v1

    const/high16 v5, -0x41000000    # -0.5f

    mul-float v6, v1, v5

    mul-float/2addr v1, v4

    int-to-float v2, v2

    mul-float/2addr v5, v2

    mul-float/2addr v2, v4

    int-to-float v13, v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v14, v3

    iget-object v7, v0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    mul-float v9, v6, v4

    mul-float v10, v1, v4

    mul-float v11, v5, v4

    mul-float v12, v2, v4

    const/4 v8, 0x0

    invoke-static/range {v7 .. v14}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method
