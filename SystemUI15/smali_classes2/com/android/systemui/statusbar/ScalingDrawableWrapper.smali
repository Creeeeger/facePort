.class public final Lcom/android/systemui/statusbar/ScalingDrawableWrapper;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCloneDrawable:Landroid/graphics/drawable/Drawable;

.field public final mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    return-void
.end method


# virtual methods
.method public final getIntrinsicHeight()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method
