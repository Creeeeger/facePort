.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ScaleType;,
        Landroid/widget/ImageView$ImageDrawableCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImageView"

.field private static greylist-max-o sCompatAdjustViewBounds:Z

.field private static greylist-max-o sCompatDone:Z

.field private static greylist-max-o sCompatDrawableVisibilityDispatch:Z

.field private static greylist-max-o sCompatUseCorrectStreamDensity:Z

.field private static final greylist-max-o sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final greylist-max-o sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private greylist mAdjustViewBounds:Z

.field private greylist mAlpha:I

.field private greylist-max-o mBaseline:I

.field private greylist-max-o mBaselineAlignBottom:Z

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist mCropToPadding:Z

.field private greylist-max-p mDrawMatrix:Landroid/graphics/Matrix;

.field private greylist mDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mDrawableBlendMode:Landroid/graphics/BlendMode;

.field private greylist mDrawableHeight:I

.field private greylist-max-o mDrawableTintList:Landroid/content/res/ColorStateList;

.field private greylist mDrawableWidth:I

.field private blacklist mHasAlpha:Z

.field private greylist-max-o mHasColorFilter:Z

.field private blacklist mHasDrawableBlendMode:Z

.field private greylist-max-o mHasDrawableTint:Z

.field private blacklist mHasLevelSet:Z

.field private blacklist mHasXfermode:Z

.field private greylist-max-o mHaveFrame:Z

.field private greylist-max-o mLevel:I

.field private greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-p mMaxHeight:I

.field private greylist-max-p mMaxWidth:I

.field private greylist-max-o mMergeState:Z

.field private greylist-max-r mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private greylist mResource:I

.field private greylist-max-o mScaleType:Landroid/widget/ImageView$ScaleType;

.field private greylist-max-o mState:[I

.field private final greylist-max-o mTempDst:Landroid/graphics/RectF;

.field private final greylist-max-o mTempSrc:Landroid/graphics/RectF;

.field private greylist mUri:Landroid/net/Uri;

.field private final greylist-max-o mViewAlphaScale:I

.field private greylist-max-o mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmResource(Landroid/widget/ImageView;I)V
    .locals 0

    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUri(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v7, v0, v1

    const/4 v1, 0x6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v7, v0, v1

    const/4 v1, 0x7

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v7, v0, v1

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    new-array v0, v6, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    iput v1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    const/16 v2, 0xff

    iput v2, p0, Landroid/widget/ImageView;->mAlpha:I

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    const/16 v2, 0x100

    iput v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    iput-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    iput-object v1, p0, Landroid/widget/ImageView;->mState:[I

    iput-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    iput v0, p0, Landroid/widget/ImageView;->mLevel:I

    iput-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ImageView;->mBaseline:I

    iput-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v8, 0x0

    iput v8, v7, Landroid/widget/ImageView;->mResource:I

    iput-boolean v8, v7, Landroid/widget/ImageView;->mHaveFrame:Z

    iput-boolean v8, v7, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    const v9, 0x7fffffff

    iput v9, v7, Landroid/widget/ImageView;->mMaxWidth:I

    iput v9, v7, Landroid/widget/ImageView;->mMaxHeight:I

    const/4 v0, 0x0

    iput-object v0, v7, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasColorFilter:Z

    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasXfermode:Z

    const/16 v10, 0xff

    iput v10, v7, Landroid/widget/ImageView;->mAlpha:I

    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasAlpha:Z

    const/16 v1, 0x100

    iput v1, v7, Landroid/widget/ImageView;->mViewAlphaScale:I

    iput-object v0, v7, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, v7, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, v7, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    iput-object v0, v7, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasDrawableTint:Z

    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    iput-object v0, v7, Landroid/widget/ImageView;->mState:[I

    iput-boolean v8, v7, Landroid/widget/ImageView;->mMergeState:Z

    iput-boolean v8, v7, Landroid/widget/ImageView;->mHasLevelSet:Z

    iput v8, v7, Landroid/widget/ImageView;->mLevel:I

    iput-object v0, v7, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    const/4 v11, -0x1

    iput v11, v7, Landroid/widget/ImageView;->mBaseline:I

    iput-boolean v8, v7, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->initImageView()V

    sget-object v0, Lcom/android/internal/R$styleable;->ImageView:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v12, v13, v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    sget-object v2, Lcom/android/internal/R$styleable;->ImageView:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v10, v6

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/ImageView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v10, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v10, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v7, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    const/16 v1, 0x8

    invoke-virtual {v10, v1, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v7, Landroid/widget/ImageView;->mBaseline:I

    const/4 v1, 0x2

    invoke-virtual {v10, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v1, 0x3

    invoke-virtual {v10, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const/4 v1, 0x4

    invoke-virtual {v10, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_1

    sget-object v3, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const/4 v3, 0x5

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    iput-boolean v1, v7, Landroid/widget/ImageView;->mHasDrawableTint:Z

    sget-object v3, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    iput-object v3, v7, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v1, v7, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    :cond_2
    const/16 v3, 0x9

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v10, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, v7, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v1, v7, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->applyImageTint()V

    const/16 v1, 0xa

    const/16 v3, 0xff

    invoke-virtual {v10, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_4
    const/4 v3, 0x7

    invoke-virtual {v10, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/widget/ImageView;->mCropToPadding:Z

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist applyAlpha()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v1, v1, 0x100

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private blacklist applyColorFilter()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private greylist-max-o applyImageTint()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private blacklist applyXfermode()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    :cond_0
    return-void
.end method

.method private greylist-max-o configureBounds()V
    .locals 11

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    if-ltz v0, :cond_1

    if-ne v2, v0, :cond_2

    :cond_1
    if-ltz v1, :cond_3

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    if-lez v0, :cond_d

    if-lez v1, :cond_d

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v8, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    :cond_5
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    :cond_6
    if-eqz v5, :cond_7

    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    :cond_7
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v4, v6, :cond_8

    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v6, v2, v0

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    sub-int v8, v3, v1

    int-to-float v8, v8

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_5

    :cond_8
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v6, :cond_a

    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    const/4 v6, 0x0

    mul-int v8, v0, v3

    mul-int v9, v2, v1

    if-le v8, v9, :cond_9

    int-to-float v8, v3

    int-to-float v9, v1

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v0

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    mul-float v4, v9, v7

    goto :goto_2

    :cond_9
    int-to-float v8, v2

    int-to-float v9, v0

    div-float/2addr v8, v9

    int-to-float v9, v3

    int-to-float v10, v1

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    mul-float v6, v9, v7

    :goto_2
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v7, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    :cond_a
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v6, :cond_c

    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-gt v0, v2, :cond_b

    if-gt v1, v3, :cond_b

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_b
    int-to-float v4, v2

    int-to-float v6, v0

    div-float/2addr v4, v6

    int-to-float v6, v3

    int-to-float v8, v1

    div-float/2addr v6, v8

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_3
    int-to-float v6, v2

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v6, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    int-to-float v8, v3

    int-to-float v9, v1

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    :cond_c
    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v7, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v8, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_5

    :cond_d
    :goto_4
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    :goto_5
    return-void

    :cond_e
    :goto_6
    return-void
.end method

.method private greylist-max-o getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 8

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Unable to open content: "

    const-string v4, "ImageView"

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v1

    iget-object v5, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v6, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v7, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    :try_start_1
    sget-boolean v1, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v5

    new-instance v6, Landroid/widget/ImageView$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Landroid/widget/ImageView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5, v6}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_2
    return-object v2
.end method

.method private greylist-max-o initImageView()V
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sput-boolean v2, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    const/16 v2, 0x17

    if-le v0, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sput-boolean v2, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    const/16 v2, 0x18

    if-ge v0, v2, :cond_2

    move v3, v1

    :cond_2
    sput-boolean v3, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    sput-boolean v1, Landroid/widget/ImageView;->sCompatDone:Z

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImportantForAutofill(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForContentCapture()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImportantForContentCapture(I)V

    :cond_5
    return-void
.end method

.method private greylist-max-o isFilledByImage()Z
    .locals 8

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget v6, v5, Landroid/graphics/RectF;->left:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    nop

    :goto_1
    return v1

    :cond_4
    return v1
.end method

.method static synthetic blacklist lambda$getDrawableFromUri$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    return-void
.end method

.method private greylist resizeFromDrawable()V
    .locals 4

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-gez v1, :cond_0

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gez v2, :cond_1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v2, v3, :cond_3

    :cond_2
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iput v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_3
    return-void
.end method

.method private greylist-max-o resolveAdjustedSize(III)I
    .locals 4

    move v0, p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist resolveUri()V
    .locals 5

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/ImageView;->mResource:I

    const-string v2, "ImageView"

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    return-void
.end method

.method private static greylist scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2

    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private greylist updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    move v0, v2

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    if-eqz v0, :cond_4

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_7

    :cond_4
    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    move v4, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    move v4, v3

    :cond_6
    :goto_1
    move v1, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_7
    iget-boolean v1, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorFilter()V

    invoke-direct {p0}, Landroid/widget/ImageView;->applyAlpha()V

    invoke-direct {p0}, Landroid/widget/ImageView;->applyXfermode()V

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    goto :goto_2

    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist animateTransform(Landroid/graphics/Matrix;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final whitelist clearColorFilter()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:baseline"

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdjustViewBounds()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public whitelist getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    return v0
.end method

.method public whitelist getBaselineAlignBottom()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getCropToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getImageAlpha()I
    .locals 1

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public whitelist getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public whitelist getImageTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getMaxHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public whitelist getMaxWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public whitelist getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1

    :cond_0
    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public blacklist isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public whitelist isOpaque()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v0, v0, 0x100

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public whitelist onCreateDrawableState(I)[I
    .locals 2

    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    iget v1, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_4
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    iget-object v8, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-nez v8, :cond_0

    const/4 v8, -0x1

    iput v8, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    iput v8, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    move v8, v9

    move v10, v9

    goto :goto_2

    :cond_0
    iget v8, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v10, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-gtz v8, :cond_1

    const/4 v8, 0x1

    :cond_1
    if-gtz v10, :cond_2

    const/4 v10, 0x1

    :cond_2
    iget-boolean v11, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v6, v12, :cond_3

    move v13, v11

    goto :goto_0

    :cond_3
    move v13, v9

    :goto_0
    move v4, v13

    if-eq v7, v12, :cond_4

    goto :goto_1

    :cond_4
    move v11, v9

    :goto_1
    move v5, v11

    int-to-float v11, v8

    int-to-float v12, v10

    div-float v3, v11, v12

    move/from16 v21, v10

    move v10, v8

    move/from16 v8, v21

    goto :goto_2

    :cond_5
    move/from16 v21, v10

    move v10, v8

    move/from16 v8, v21

    :goto_2
    iget v11, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    iget v12, v0, Landroid/widget/ImageView;->mPaddingRight:I

    iget v13, v0, Landroid/widget/ImageView;->mPaddingTop:I

    iget v14, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    add-int v15, v11, v12

    add-int/2addr v10, v15

    add-int v15, v13, v14

    add-int/2addr v8, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v10, v1, v9}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v15

    invoke-static {v8, v2, v9}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v9

    move/from16 v16, v6

    move/from16 v18, v7

    goto/16 :goto_6

    :cond_7
    :goto_3
    add-int v9, v10, v11

    add-int/2addr v9, v12

    iget v15, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v9, v15, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v15

    add-int v9, v8, v13

    add-int/2addr v9, v14

    move/from16 v16, v6

    iget v6, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v9, v6, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_d

    sub-int v6, v15, v11

    sub-int/2addr v6, v12

    int-to-float v6, v6

    sub-int v17, v9, v13

    move/from16 v18, v7

    sub-int v7, v17, v14

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v17, v6

    float-to-double v6, v7

    const-wide v19, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v6, v6, v19

    if-lez v6, :cond_c

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    sub-int v7, v9, v13

    sub-int/2addr v7, v14

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    add-int/2addr v7, v11

    add-int/2addr v7, v12

    if-nez v5, :cond_8

    sget-boolean v19, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    if-nez v19, :cond_8

    move/from16 v19, v6

    iget v6, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v7, v6, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v6

    move v15, v6

    goto :goto_4

    :cond_8
    move/from16 v19, v6

    :goto_4
    if-gt v7, v15, :cond_9

    move v15, v7

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    move/from16 v6, v19

    goto :goto_5

    :cond_a
    move/from16 v19, v6

    :goto_5
    if-nez v6, :cond_c

    if-eqz v5, :cond_c

    sub-int v7, v15, v11

    sub-int/2addr v7, v12

    int-to-float v7, v7

    div-float/2addr v7, v3

    float-to-int v7, v7

    add-int/2addr v7, v13

    add-int/2addr v7, v14

    if-nez v4, :cond_b

    sget-boolean v19, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    if-nez v19, :cond_b

    iget v1, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    :cond_b
    if-gt v7, v9, :cond_c

    move v1, v7

    move v9, v1

    :cond_c
    goto :goto_6

    :cond_d
    move/from16 v18, v7

    :goto_6
    invoke-virtual {v0, v15, v9}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public greylist-max-o onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void
.end method

.method public whitelist setAdjustViewBounds(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz p1, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasAlpha:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyAlpha()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public whitelist setBaseline(I)V
    .locals 1

    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist setBaselineAlignBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final whitelist setColorFilter(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final whitelist setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorFilter()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public whitelist setCropToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected whitelist setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    return v0
.end method

.method public whitelist setImageAlpha(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void
.end method

.method public whitelist setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public greylist-max-o setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 4

    new-instance v0, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public whitelist setImageLevel(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasLevelSet:Z

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    :cond_0
    return-void
.end method

.method public whitelist setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_3
    return-void
.end method

.method public whitelist setImageResource(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public greylist setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageView"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :cond_0
    :goto_0
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1
.end method

.method public whitelist setImageState([IZ)V
    .locals 1

    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    :cond_0
    return-void
.end method

.method public whitelist setImageTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableBlendMode:Landroid/graphics/BlendMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableBlendMode:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    return-void
.end method

.method public whitelist setImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    return-void
.end method

.method public whitelist setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_3
    return-void
.end method

.method public greylist setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 3

    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    move-object v0, v1

    if-nez v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1
.end method

.method public whitelist setMaxHeight(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return-void
.end method

.method public whitelist setMaxWidth(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return-void
.end method

.method public whitelist setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist setSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public final greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasXfermode:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyXfermode()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
