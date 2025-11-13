.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

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

    iput-boolean p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

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

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v5

    const/4 v6, 0x0

    aget v7, v3, v6

    iget v8, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    invoke-virtual {v0, v5, v7, v8}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v7, v0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result v11

    new-instance v7, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v7, v10, v11}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    instance-of v8, v5, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    const/4 v15, 0x4

    if-eqz v8, :cond_0

    check-cast v5, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    aget v12, v3, v6

    check-cast v5, Lcom/android/launcher3/icons/ClockDrawableWrapper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3, v15}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v7, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;

    iget-object v13, v5, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v9, v7

    move v3, v15

    move-object v15, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/icons/ClockDrawableWrapper$ClockBitmapInfo;-><init>(Landroid/graphics/Bitmap;IFLcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    move v3, v15

    sget v0, Lcom/android/launcher3/icons/IconProvider;->CONFIG_ICON_MASK_RES_ID:I

    :goto_0
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;

    iget-object v1, v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserIconInfo:Lcom/android/launcher3/util/UserIconInfo;

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/android/launcher3/util/UserIconInfo;->type:I

    if-ne v1, v2, :cond_1

    new-instance v4, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2, v2}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    :goto_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    new-instance v5, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, v3, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    goto :goto_2

    :cond_2
    new-instance v5, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, v3, v2}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    :goto_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v6

    :goto_3
    const/16 v3, 0x8

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {v1, v5, v3, v6}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    goto :goto_4

    :cond_4
    new-instance v1, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {v1, v5, v3, v2}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;II)V

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    if-ne v1, v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v7}, Lcom/android/launcher3/icons/BitmapInfo;->clone()Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v7

    iget v0, v7, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    invoke-interface {v1, v0}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v0

    iput v0, v7, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    :goto_5
    return-object v7
.end method

.method public final createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 8

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/icons/BaseIconFactory;->drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result p0

    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public final createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object p1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3d0f5c29    # 0.035f

    cmpg-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3eee147b    # 0.465f

    if-gez v4, :cond_0

    sub-float v2, v5, v2

    div-float v2, v6, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    sub-float/2addr v5, v0

    div-float/2addr v6, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final drawIconBitmap(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap;)V
    .locals 10

    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v1, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const v2, 0x3caaaaab

    const/4 v3, 0x7

    const/16 v4, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_7

    int-to-float p5, v0

    const v1, 0x3d0f5c29    # 0.035f

    mul-float/2addr v1, p5

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v1, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p3

    mul-float/2addr v7, p5

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v7, p3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    sub-int/2addr v0, p3

    sub-int/2addr v0, p3

    invoke-virtual {p2, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p5

    int-to-float p3, p3

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eq p4, v6, :cond_0

    const/4 p3, 0x4

    if-ne p4, p3, :cond_2

    :cond_0
    iget-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/launcher3/icons/ShadowGenerator;

    iget p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {p3, p4}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    iput-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    :cond_1
    iget-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    move-object p4, p2

    check-cast p4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p4

    iget-object v0, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p3, p3, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_2
    instance-of p3, p2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz p3, :cond_6

    move-object p3, p2

    check-cast p3, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    check-cast p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;

    invoke-virtual {p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_3
    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    if-eq v0, v1, :cond_4

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_4
    iget-object v0, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    iget v0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    if-eq v0, v1, :cond_5

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_5
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p4, p3, Lcom/android/launcher3/icons/ClockDrawableWrapper;->mAnimationInfo:Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p4, v0, p3}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_2

    :cond_7
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_8

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_8
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-lez v1, :cond_a

    if-lez v7, :cond_a

    int-to-float v8, v1

    int-to-float v9, v7

    div-float/2addr v8, v9

    if-le v1, v7, :cond_9

    int-to-float v1, v0

    div-float/2addr v1, v8

    float-to-int v1, v1

    move v7, v1

    move v1, v0

    goto :goto_1

    :cond_9
    if-le v7, v1, :cond_a

    int-to-float v1, v0

    mul-float/2addr v1, v8

    float-to-int v1, v1

    move v7, v0

    goto :goto_1

    :cond_a
    move v1, v0

    move v7, v1

    :goto_1
    sub-int v8, v0, v1

    div-int/2addr v8, v6

    sub-int v9, v0, v7

    div-int/2addr v9, v6

    add-int/2addr v1, v8

    add-int/2addr v7, v9

    invoke-virtual {p2, v8, v9, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-ne p4, v6, :cond_c

    if-eqz p5, :cond_c

    iget-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    if-nez p4, :cond_b

    new-instance p4, Lcom/android/launcher3/icons/ShadowGenerator;

    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {p4, v1}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    iput-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    :cond_b
    iget-object p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    monitor-enter p4

    :try_start_0
    new-array v1, v6, [I

    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v7, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v6, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object p5

    iget-object v6, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    aget v4, v1, v5

    int-to-float v4, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    int-to-float v7, v7

    iget-object v8, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, v4, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v4, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    aget v3, v1, v5

    int-to-float v3, v3

    aget v1, v1, v6

    int-to-float v1, v1

    iget v4, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mIconSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    iget-object v1, p4, Lcom/android/launcher3/icons/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p3, v0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p4

    throw p0

    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    return-object p0
.end method

.method public final normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/AdaptiveIconDrawable;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$EmptyWrapper;

    invoke-direct {v1}, Lcom/android/launcher3/icons/BaseIconFactory$EmptyWrapper;-><init>()V

    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v2, v4, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    new-array v4, v4, [Z

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v5, p1, p2, v6, v4}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v5

    aget-boolean v4, v4, v2

    if-nez v4, :cond_2

    sget v4, Lcom/android/launcher3/icons/BaseIconFactory;->LEGACY_ICON_SCALE:F

    mul-float/2addr v5, v4

    invoke-static {p1, v5}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {p1, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object p1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p0

    aput p0, p3, v2

    return-object p1
.end method
