.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "BaseIconFactory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;,
        Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
    }
.end annotation


# static fields
.field private static PLACEHOLDER_BACKGROUND_COLOR:I


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

.field protected final mContext:Landroid/content/Context;

.field private mDisableColorExtractor:Z

.field protected final mFillResIconDpi:I

.field protected final mIconBitmapSize:I

.field private final mIsUserBadged:Landroid/util/SparseBooleanArray;

.field protected mMonoIconEnabled:Z

.field private mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

.field private final mShapeDetection:Z

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mWhiteShadowLayer:Landroid/graphics/Bitmap;

.field private mWrapperBackgroundColor:I

.field private mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf5

    .line 74
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/launcher3/icons/BaseIconFactory;->PLACEHOLDER_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mTextPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 79
    iput-boolean p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    .line 80
    iput p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    .line 81
    iput p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 84
    new-instance p2, Lcom/android/launcher3/icons/ColorExtractor;

    invoke-direct {p2}, Lcom/android/launcher3/icons/ColorExtractor;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    .line 86
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 87
    new-instance p3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p4, 0x4

    const/4 v1, 0x2

    invoke-direct {p3, p4, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 88
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    sget p2, Lcom/android/launcher3/icons/BaseIconFactory;->PLACEHOLDER_BACKGROUND_COLOR:I

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    return-void
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 1

    .line 316
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    .line 329
    invoke-static {p3, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-nez p1, :cond_0

    return-object p4

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_2

    const v0, 0x3d0f5c29    # 0.035f

    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-double v2, v0

    .line 337
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    .line 338
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 337
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p3, p2

    sub-int/2addr p3, p2

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p1, v0, v0, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    iget-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result p3

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    int-to-float p2, p2

    invoke-virtual {v0, p2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 344
    instance-of p2, p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz p2, :cond_1

    .line 345
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {p2, v0}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->drawForPersistence(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    :goto_0
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 351
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 352
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 353
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p4, :cond_3

    .line 354
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-nez v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 361
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 362
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v0, :cond_5

    if-lez v1, :cond_5

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    if-le v0, v1, :cond_4

    int-to-float v0, p3

    div-float/2addr v0, v2

    float-to-int v0, v0

    move v1, v0

    move v0, p3

    goto :goto_1

    :cond_4
    if-le v1, v0, :cond_5

    int-to-float v0, p3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v1, p3

    goto :goto_1

    :cond_5
    move v0, p3

    move v1, v0

    :goto_1
    sub-int v2, p3, v0

    .line 372
    div-int/lit8 v2, v2, 0x2

    sub-int v3, p3, v1

    .line 373
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    .line 374
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-virtual {v0, p2, p2, p3, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 377
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 378
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 381
    :goto_2
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 382
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p4
.end method

.method private extractColor(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mDisableColorExtractor:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getBadgeSizeForIconSize(I)I
    .locals 1

    int-to-float p0, p0

    const v0, 0x3ee353f8    # 0.444f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 290
    instance-of p2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez p2, :cond_2

    .line 291
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    .line 292
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/icons/R$drawable;->adaptive_icon_drawable_wrapper:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 293
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 295
    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v2, 0x1

    .line 296
    invoke-virtual {p2, v1, v1, v2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    new-array v2, v2, [Z

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, p1, p3, v4, v2}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    .line 300
    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/icons/FixedScaleDrawable;

    .line 301
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {v2, v3}, Lcom/android/launcher3/icons/FixedScaleDrawable;->setScale(F)V

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    .line 305
    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    move-object p1, p2

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p0

    invoke-virtual {p0, p1, p3, v0, v0}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    .line 311
    :cond_3
    :goto_0
    aput v3, p4, v1

    return-object p1
.end method


# virtual methods
.method protected clear()V
    .locals 1

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mDisableColorExtractor:Z

    return-void
.end method

.method public close()V
    .locals 0

    .line 388
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    return-void
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 187
    iget-boolean v2, p2, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    new-array v0, v0, [F

    const/4 v3, 0x0

    .line 189
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget v2, v0, v1

    .line 190
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    instance-of v4, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_2

    .line 192
    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;

    move-result-object v5

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 194
    iget-object v5, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->extractColor(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 198
    invoke-static {v2, v3}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    .line 200
    instance-of v6, p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz v6, :cond_3

    .line 201
    check-cast p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    aget v0, v0, v1

    invoke-interface {p1, v2, v3, p0, v0}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->getExtendedInfo(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/BaseIconFactory;F)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    goto :goto_2

    .line 202
    :cond_3
    iget-boolean v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mMonoIconEnabled:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/launcher3/icons/IconProvider;->ATLEAST_T:Z

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 204
    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 207
    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;

    invoke-direct {v2, p1}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    aget p1, v0, v1

    .line 208
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 209
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 208
    invoke-virtual {v5, p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->setMonoIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/BaseIconFactory;)V

    .line 213
    :cond_4
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 1

    .line 324
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createScaledBitmapWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 257
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public getBitmapFlagOp(Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/util/FlagOp;
    .locals 5

    .line 218
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eqz p1, :cond_3

    .line 220
    iget-boolean v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsInstantApp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 221
    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 224
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_3

    .line 225
    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    .line 229
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    goto :goto_1

    .line 232
    :cond_1
    new-instance v2, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/launcher3/icons/BaseIconFactory$NoopDrawable;-><init>(Lcom/android/launcher3/icons/BaseIconFactory$1;)V

    .line 233
    iget-object v4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v2, p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 234
    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIsUserBadged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move p0, p1

    .line 236
    :goto_1
    invoke-interface {v0, v3, p0}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    return-object p0
.end method

.method public getShadowGenerator()Lcom/android/launcher3/icons/ShadowGenerator;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/launcher3/icons/ShadowGenerator;

    iget v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/ShadowGenerator;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShadowGenerator:Lcom/android/launcher3/icons/ShadowGenerator;

    return-object p0
.end method

.method getWhiteShadowLayer()Landroid/graphics/Bitmap;
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmapWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWhiteShadowLayer:Landroid/graphics/Bitmap;

    return-object p0
.end method
