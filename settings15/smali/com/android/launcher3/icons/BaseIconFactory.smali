.class public abstract Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final LEGACY_ICON_SCALE:F


# instance fields
.field public final mCanvas:Landroid/graphics/Canvas;

.field public final mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

.field public final mContext:Landroid/content/Context;

.field public final mFillResIconDpi:I

.field public final mIconBitmapSize:I

.field public mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

.field public final mOldBounds:Landroid/graphics/Rect;

.field public mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

.field public final mShapeDetection:Z

.field public mWrapperBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    div-float/2addr v0, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    sput v0, Lcom/android/launcher3/icons/BaseIconFactory;->LEGACY_ICON_SCALE:F

    const/16 v0, 0xf5

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    iput p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    iput p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/launcher3/icons/ColorExtractor;

    invoke-direct {p1}, Lcom/android/launcher3/icons/ColorExtractor;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p3, 0x4

    const/4 v1, 0x2

    invoke-direct {p2, p3, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    return-void
.end method

.method public static createScaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    cmpl-float v2, v1, v3

    if-lez v2, :cond_0

    div-float/2addr v1, v0

    mul-float/2addr v1, p1

    move v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, p1, v2

    sub-float/2addr v1, v0

    div-float v8, v1, v2

    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, p1

    move-object v4, p0

    move v5, v7

    move v6, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    return-void
.end method

.method public final createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v9, v8, [F

    if-nez v1, :cond_0

    move-object v1, v6

    goto/16 :goto_2

    :cond_0
    instance-of v10, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v10, :cond_1

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    goto :goto_1

    :cond_1
    new-instance v10, Lcom/android/launcher3/icons/BaseIconFactory$EmptyWrapper;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-direct {v10, v11}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    iget v13, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v11, v12, v10}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v7, v7, v8, v8}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    new-array v12, v8, [Z

    iget-object v13, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    if-nez v13, :cond_2

    new-instance v13, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v14, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v15, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    invoke-direct {v13, v14, v15, v3}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v13, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    :cond_2
    iget-object v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    invoke-virtual {v11}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v13

    invoke-virtual {v3, v1, v6, v13, v12}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    aget-boolean v12, v12, v7

    if-nez v12, :cond_3

    sget v12, Lcom/android/launcher3/icons/BaseIconFactory;->LEGACY_ICON_SCALE:F

    mul-float/2addr v3, v12

    invoke-static {v1, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v3

    sub-float v3, v5, v3

    invoke-static {v1, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object v1, v11

    :goto_1
    iget-object v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v10, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v11, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v12, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    invoke-direct {v3, v10, v11, v12}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    :cond_4
    iget-object v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    invoke-virtual {v3, v1, v6, v6, v6}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    aput v3, v9, v7

    :goto_2
    aget v3, v9, v7

    iget v9, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v1, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v10, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v10, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    iget v11, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-object v12, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v12, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/16 v15, 0x19

    if-eqz v12, :cond_7

    int-to-float v12, v11

    const v16, 0x3d0f5c29    # 0.035f

    mul-float v8, v12, v16

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v8, v13

    sub-float/2addr v5, v3

    mul-float/2addr v5, v12

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v11, v3

    sub-int/2addr v11, v3

    invoke-virtual {v1, v7, v7, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v5

    int-to-float v3, v3

    invoke-virtual {v10, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    if-nez v3, :cond_6

    new-instance v3, Lcom/android/launcher3/icons/ShadowGenerator;

    iget v8, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {v3, v8}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    iput-object v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    :cond_6
    iget-object v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v8

    iget-object v11, v3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v12, v3, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v11, v3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v11, v3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v12, v3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v12, v3, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    int-to-float v12, v12

    const v13, 0x3caaaaab

    mul-float/2addr v12, v13

    invoke-virtual {v10, v2, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, v3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v3, v3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v10, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_4

    :cond_7
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_8

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_8
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-lez v5, :cond_a

    if-lez v8, :cond_a

    int-to-float v12, v5

    int-to-float v13, v8

    div-float/2addr v12, v13

    if-le v5, v8, :cond_9

    int-to-float v5, v11

    div-float/2addr v5, v12

    float-to-int v5, v5

    move v8, v5

    move v5, v11

    goto :goto_3

    :cond_9
    if-le v8, v5, :cond_a

    int-to-float v5, v11

    mul-float/2addr v5, v12

    float-to-int v5, v5

    move v8, v11

    goto :goto_3

    :cond_a
    move v5, v11

    move v8, v5

    :goto_3
    sub-int v12, v11, v5

    div-int/2addr v12, v4

    sub-int v13, v11, v8

    div-int/2addr v13, v4

    add-int/2addr v5, v12

    add-int/2addr v8, v13

    invoke-virtual {v1, v12, v13, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    div-int/2addr v11, v4

    int-to-float v5, v11

    invoke-virtual {v10, v3, v3, v5, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    if-eqz v9, :cond_c

    iget-object v8, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    if-nez v8, :cond_b

    new-instance v8, Lcom/android/launcher3/icons/ShadowGenerator;

    iget v11, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {v8, v11}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    iput-object v8, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    :cond_b
    iget-object v8, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    monitor-enter v8

    :try_start_0
    new-array v11, v4, [I

    iget-object v12, v8, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v13, v8, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v12, v8, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v12, v11}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v12

    iget-object v13, v8, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    aget v13, v11, v7

    int-to-float v13, v13

    const/4 v14, 0x1

    aget v15, v11, v14

    int-to-float v14, v15

    iget-object v15, v8, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v13, v8, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    aget v13, v11, v7

    int-to-float v13, v13

    const/4 v14, 0x1

    aget v11, v11, v14

    int-to-float v11, v11

    iget v14, v8, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    int-to-float v14, v14

    const v15, 0x3caaaaab

    mul-float/2addr v14, v15

    add-float/2addr v14, v11

    iget-object v11, v8, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v12, v13, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v10, v3, v3, v5, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_c
    :goto_4
    iget-object v3, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    iget-object v0, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v5, v1, v3

    const/16 v6, 0x14

    div-int/2addr v5, v6

    int-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v5, v10

    const/4 v8, 0x1

    if-ge v5, v8, :cond_d

    const/4 v5, 0x1

    :cond_d
    iget-object v8, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v10, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v2, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    invoke-static {v2, v7}, Ljava/util/Arrays;->fill([II)V

    const/4 v12, -0x1

    move v13, v7

    move v14, v13

    const/high16 v15, -0x40800000    # -1.0f

    :goto_6
    const/high16 v16, -0x1000000

    if-ge v13, v1, :cond_14

    move v11, v7

    :goto_7
    if-ge v11, v3, :cond_13

    invoke-virtual {v9, v11, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v18

    shr-int/lit8 v4, v18, 0x18

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x80

    if-ge v4, v6, :cond_f

    :cond_e
    :goto_8
    const/16 v7, 0x14

    goto :goto_9

    :cond_f
    or-int v4, v18, v16

    invoke-static {v4, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v6, v8, v7

    float-to-int v6, v6

    if-ltz v6, :cond_e

    array-length v7, v10

    if-lt v6, v7, :cond_10

    goto :goto_8

    :cond_10
    const/16 v7, 0x14

    const/16 v17, 0x1

    if-ge v14, v7, :cond_11

    add-int/lit8 v20, v14, 0x1

    aput v4, v2, v14

    move/from16 v14, v20

    :cond_11
    aget v4, v8, v17

    const/16 v19, 0x2

    aget v20, v8, v19

    mul-float v4, v4, v20

    aget v20, v10, v6

    add-float v20, v20, v4

    aput v20, v10, v6

    cmpl-float v4, v20, v15

    if-lez v4, :cond_12

    move v12, v6

    move/from16 v15, v20

    :cond_12
    :goto_9
    add-int/2addr v11, v5

    move v6, v7

    const/4 v4, 0x2

    const/4 v7, 0x0

    goto :goto_7

    :cond_13
    move v7, v6

    add-int/2addr v13, v5

    const/4 v4, 0x2

    const/4 v7, 0x0

    goto :goto_6

    :cond_14
    iget-object v0, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    move/from16 v1, v16

    const/4 v3, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    :goto_a
    if-ge v3, v14, :cond_17

    aget v4, v2, v3

    invoke-static {v4, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v5, 0x0

    aget v6, v8, v5

    float-to-int v5, v6

    if-ne v5, v12, :cond_16

    const/4 v5, 0x1

    aget v6, v8, v5

    const/4 v5, 0x2

    aget v7, v8, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const v10, 0x461c4000    # 10000.0f

    mul-float/2addr v10, v7

    float-to-int v10, v10

    add-int/2addr v5, v10

    mul-float/2addr v6, v7

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    if-nez v7, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    :goto_b
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    cmpl-float v5, v6, v11

    if-lez v5, :cond_16

    move v1, v4

    move v11, v6

    :cond_16
    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_a

    :cond_17
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0, v9, v1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    sget v2, Lcom/android/launcher3/icons/IconProvider;->CONFIG_ICON_MASK_RES_ID:I

    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;

    move-object/from16 v3, p2

    iget-object v3, v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserIconInfo:Lcom/android/launcher3/util/UserIconInfo;

    if-eqz v3, :cond_1d

    iget v3, v3, Lcom/android/launcher3/util/UserIconInfo;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    new-instance v5, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v4, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    :goto_c
    const/4 v4, 0x2

    goto :goto_d

    :cond_18
    new-instance v5, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v4, v4}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    goto :goto_c

    :goto_d
    if-ne v3, v4, :cond_19

    const/4 v4, 0x1

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_1a

    new-instance v4, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    goto :goto_f

    :cond_1a
    const/4 v7, 0x4

    new-instance v4, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v7, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    :goto_f
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1b

    const/4 v14, 0x1

    goto :goto_10

    :cond_1b
    const/4 v14, 0x0

    :goto_10
    const/16 v3, 0x8

    if-eqz v14, :cond_1c

    new-instance v5, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v3, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    goto :goto_11

    :cond_1c
    new-instance v5, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v3, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    goto :goto_11

    :cond_1d
    move-object v5, v2

    :goto_11
    if-ne v5, v2, :cond_1e

    goto :goto_12

    :cond_1e
    new-instance v2, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v2, v9, v1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iput-object v1, v2, Lcom/android/launcher3/icons/BitmapInfo;->mMono:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iput-object v1, v2, Lcom/android/launcher3/icons/BitmapInfo;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    iget v1, v0, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iput v1, v2, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, v2, Lcom/android/launcher3/icons/BitmapInfo;->badgeInfo:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-interface {v5, v1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v0

    iput v0, v2, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    move-object v0, v2

    :goto_12
    return-object v0
.end method
