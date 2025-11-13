.class Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist oops()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postConcat(Landroid/graphics/Matrix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postRotate(F)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postRotate(FFF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postScale(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postScale(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postSkew(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postSkew(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postTranslate(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preConcat(Landroid/graphics/Matrix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preRotate(F)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preRotate(FFF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preScale(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preScale(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preSkew(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preSkew(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist preTranslate(FF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist reset()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist set(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPolyToPoly([FI[FII)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRotate(F)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setRotate(FFF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setScale(FF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setScale(FFFF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setSinCos(FF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setSinCos(FFFF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setSkew(FF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setSkew(FFFF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setTranslate(FF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method

.method public whitelist setValues([F)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    return-void
.end method
