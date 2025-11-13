.class abstract Landroid/graphics/drawable/RippleComponent;
.super Ljava/lang/Object;
.source "RippleComponent.java"


# instance fields
.field protected final greylist-max-o mBounds:Landroid/graphics/Rect;

.field protected greylist-max-o mDensityScale:F

.field private greylist-max-o mHasMaxRadius:Z

.field protected final greylist-max-o mOwner:Landroid/graphics/drawable/RippleDrawable;

.field protected greylist-max-o mTargetRadius:F


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    iput-object p2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private static greylist-max-o getTargetRadius(Landroid/graphics/Rect;)F
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v1, v0, v0

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    return v1
.end method


# virtual methods
.method public greylist-max-o getBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    neg-int v1, v0

    neg-int v2, v0

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected final greylist-max-o invalidateSelf()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method public greylist-max-o onBoundsChange()V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    :cond_0
    return-void
.end method

.method protected final greylist-max-o onHotspotBoundsChanged()V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    :cond_0
    return-void
.end method

.method protected greylist-max-o onTargetRadiusChanged(F)V
    .locals 0

    return-void
.end method

.method public final greylist-max-o setup(FI)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    :goto_0
    int-to-float v0, p2

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mDensityScale:F

    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    return-void
.end method
