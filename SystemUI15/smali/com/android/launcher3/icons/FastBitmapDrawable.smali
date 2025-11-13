.class public Lcom/android/launcher3/icons/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static final ACCEL:Landroid/view/animation/Interpolator;

.field public static final DEACCEL:Landroid/view/animation/Interpolator;

.field protected static final HOVERED_SCALE:F = 1.1f

.field public static final HOVER_EMPHASIZED_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field protected static final PRESSED_SCALE:F = 1.1f

.field protected static final SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/icons/FastBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlpha:I

.field public mBadge:Landroid/graphics/drawable/Drawable;

.field public final mBitmap:Landroid/graphics/Bitmap;

.field public mColorFilter:Landroid/graphics/ColorFilter;

.field public mCreationFlags:I

.field public mDisabledAlpha:F

.field public final mIconColor:I

.field public mIsDisabled:Z

.field protected mIsHovered:Z

.field protected mIsPressed:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mScale:F

.field protected mScaleAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->ACCEL:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->HOVER_EMPHASIZED_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable$1;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mCreationFlags:I

    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/icons/BitmapInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static final getDisabledColor(I)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    add-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x3

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    const/16 v0, 0x7f

    int-to-float v0, v0

    add-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v0, 0xff

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static getDisabledColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 5

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v4, v2, v3

    const/16 v3, 0x7f

    int-to-float v3, v3

    const/4 v4, 0x4

    aput v3, v2, v4

    const/16 v4, 0x9

    aput v3, v2, v4

    const/16 v4, 0xe

    aput v3, v2, v4

    const/16 v3, 0x12

    aput p0, v2, v3

    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    return p0
.end method

.method public getBadge()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    iput-boolean v1, v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIsDisabled:Z

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBadgeConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_0
    iget p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mCreationFlags:I

    iput p0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mCreationFlags:I

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    return p0
.end method

.method public final getMinimumHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public final getMinimumWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 2

    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget v1, Lcom/android/launcher3/icons/BaseIconFactory;->LEGACY_ICON_SCALE:F

    const v1, 0x3ee353f8    # 0.444f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, v1, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 7

    const/4 v0, 0x1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    move p1, v0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    if-ne v1, p1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsHovered:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_4
    if-eqz p1, :cond_5

    const v1, 0x3f8ccccd    # 1.1f

    goto :goto_3

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    iget v3, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    if-eq p1, v3, :cond_7

    if-eqz p1, :cond_6

    sget-object v4, Lcom/android/launcher3/icons/FastBitmapDrawable;->ACCEL:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/android/launcher3/icons/FastBitmapDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_7
    sget-object v4, Lcom/android/launcher3/icons/FastBitmapDrawable;->HOVER_EMPHASIZED_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_4
    if-eq p1, v3, :cond_8

    const/16 v3, 0xc8

    goto :goto_5

    :cond_8
    const/16 v3, 0x12c

    :goto_5
    sget-object v5, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    new-array v6, v0, [F

    aput v1, v6, v2

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    :cond_9
    iput v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_a
    :goto_6
    iput-boolean p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    iput-boolean v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsHovered:Z

    return v0
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFilter()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
