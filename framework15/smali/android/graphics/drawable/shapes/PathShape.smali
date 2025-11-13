.class public Landroid/graphics/drawable/shapes/PathShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "PathShape.java"


# instance fields
.field private greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mScaleX:F

.field private greylist-max-o mScaleY:F

.field private final greylist-max-o mStdHeight:F

.field private final greylist-max-o mStdWidth:F


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Path;FF)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    iput p2, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    iput p3, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/graphics/drawable/shapes/PathShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/PathShape;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/PathShape;->clone()Landroid/graphics/drawable/shapes/PathShape;

    move-result-object v0

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v1, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/shapes/Shape;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/shapes/PathShape;

    iget v3, v2, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    iget v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    iget v3, v2, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    iget v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    iget v3, v2, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    iget v3, v2, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    iget v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    iget-object v4, v2, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/drawable/shapes/PathShape;->mPath:Landroid/graphics/Path;

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected whitelist onResize(FF)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdWidth:F

    div-float v0, p1, v0

    iput v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleX:F

    iget v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mStdHeight:F

    div-float v0, p2, v0

    iput v0, p0, Landroid/graphics/drawable/shapes/PathShape;->mScaleY:F

    return-void
.end method
