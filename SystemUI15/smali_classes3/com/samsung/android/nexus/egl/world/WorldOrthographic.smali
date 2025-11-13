.class public final Lcom/samsung/android/nexus/egl/world/WorldOrthographic;
.super Lcom/samsung/android/nexus/egl/world/BaseWorld;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(II)V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/world/BaseWorld;-><init>()V

    if-le p2, p1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    int-to-float p1, p1

    const/high16 v1, -0x41000000    # -0.5f

    mul-float v3, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v4, p1, v2

    int-to-float p1, p2

    mul-float v5, p1, v1

    mul-float v6, p1, v2

    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    int-to-float v7, v0

    neg-int p2, v0

    int-to-float v8, p2

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    return-void
.end method
