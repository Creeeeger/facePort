.class final Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;
    }
.end annotation


# static fields
.field public static final blacklist KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mAnimatedDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final blacklist mIconPaint:Landroid/graphics/Paint;

.field private final blacklist mShadowPaint:Landroid/graphics/Paint;

.field private final blacklist mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;

    const-string v1, "KeyButtonRotation"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$2;

    const-string v1, "KeyButtonTranslateY"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V
    .locals 7

    new-instance v6, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    instance-of v3, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;-><init>(IIZZLandroid/graphics/Color;)V

    invoke-direct {p0, p1, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .locals 14

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move-object v4, p0

    move/from16 v5, p3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    move-object v6, v13

    move-object v7, v12

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V

    move-object v2, v13

    if-eqz p4, :cond_2

    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v7

    const/high16 v8, 0x30000000

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setShadowProperties(IIII)V

    :cond_2
    return-object v2
.end method

.method private blacklist regenerateBitmapIconCache()V
    .locals 9

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v4, v4, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v5, :cond_0

    int-to-float v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    int-to-float v7, v1

    mul-float/2addr v7, v6

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6, v8, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v5, :cond_1

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v2, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private blacklist regenerateBitmapShadowCache()V
    .locals 11

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v6, v6, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v6, :cond_1

    int-to-float v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    int-to-float v8, v2

    mul-float/2addr v8, v7

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7, v9, v6, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v7, Landroid/graphics/BlurMaskFilter;

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v8, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v8, v8

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    aget v9, v7, v1

    int-to-float v9, v9

    const/4 v10, 0x1

    aget v10, v7, v10

    int-to-float v10, v10

    invoke-virtual {v4, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v9, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v9, v9, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v9, :cond_2

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v9, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v3, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    return-void
.end method

.method private blacklist setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private blacklist updateShadowAlpha()V
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public blacklist canAnimate()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    return v0
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public blacklist clearAnimationCallbacks()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    :cond_0
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    iput-boolean v3, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    :cond_3
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->regenerateBitmapIconCache()V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->regenerateBitmapShadowCache()V

    :cond_7
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v7, v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v4, v4, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    sub-float/2addr v3, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v6, v6, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v8, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_8
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    return-object v0
.end method

.method public blacklist getDarkIntensity()F
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    return v0
.end method

.method blacklist getDrawableBackgroundColor()I
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    return v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public blacklist getRotation()F
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    return v0
.end method

.method public blacklist getTranslationX()F
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    return v0
.end method

.method public blacklist getTranslationY()F
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    return v0
.end method

.method blacklist hasOvalBg()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public blacklist resetAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_0
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public blacklist setRotation(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public blacklist setShadowProperties(IIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    if-eq v0, p4, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p4, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public blacklist setTranslation(FF)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public blacklist setTranslationX(F)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setTranslation(FF)V

    return-void
.end method

.method public blacklist setTranslationY(F)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    invoke-virtual {p0, v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setTranslation(FF)V

    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->jumpToCurrentState()V

    :cond_0
    return v0
.end method

.method public blacklist startAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method
