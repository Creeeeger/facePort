.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$CirCleProgressDrawable;,
        Landroid/widget/ProgressBar$CircleAnimationCallback;,
        Landroid/widget/ProgressBar$ProgressTintInfo;,
        Landroid/widget/ProgressBar$SavedState;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final greylist-max-o MAX_LEVEL:I = 0x2710

.field public static final blacklist MODE_STANDARD:I = 0x0

.field private static final greylist-max-o PROGRESS_ANIM_DURATION:I = 0x50

.field private static final greylist-max-o PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field public static final whitelist SEM_MODE_CIRCLE:I = 0x6

.field public static final blacklist SEM_MODE_DUAL_COLOR:I = 0x2

.field public static final whitelist SEM_MODE_EXPAND:I = 0x5

.field public static final whitelist SEM_MODE_SPLIT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_MODE_VERTICAL:I = 0x3

.field public static final whitelist SEM_MODE_WARNING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ProgressBar"


# instance fields
.field private final greylist-max-o VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAggregatedIsVisible:Z

.field private greylist-max-o mAnimation:Landroid/view/animation/AlphaAnimation;

.field private greylist-max-o mAttached:Z

.field private greylist-max-o mBehavior:I

.field private blacklist mCachedLocale:Ljava/util/Locale;

.field private blacklist mCircleAnimationCallback:Landroid/widget/ProgressBar$CircleAnimationCallback;

.field private greylist-max-p mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field protected blacklist mCurrentMode:I

.field protected blacklist mDensity:F

.field private greylist-max-p mDuration:I

.field private greylist-max-o mHasAnimation:Z

.field private greylist-max-o mInDrawing:Z

.field private greylist-max-p mIndeterminate:Z

.field private greylist-max-o mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mIndeterminateHorizontalLarge:Landroid/graphics/drawable/Drawable;

.field private blacklist mIndeterminateHorizontalMedium:Landroid/graphics/drawable/Drawable;

.field private blacklist mIndeterminateHorizontalSmall:Landroid/graphics/drawable/Drawable;

.field private blacklist mIndeterminateHorizontalXlarge:Landroid/graphics/drawable/Drawable;

.field private blacklist mIndeterminateHorizontalXsmall:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mInterpolator:Landroid/view/animation/Interpolator;

.field public blacklist mIsDeviceDefaultDark:Z

.field private blacklist mLastProgressAnimator:Landroid/animation/ObjectAnimator;

.field private greylist-max-o mMax:I

.field greylist-max-p mMaxHeight:I

.field private greylist-max-o mMaxInitialized:Z

.field greylist-max-o mMaxWidth:I

.field private greylist-max-o mMin:I

.field greylist-max-p mMinHeight:I

.field private greylist-max-o mMinInitialized:Z

.field greylist-max-p mMinWidth:I

.field greylist-max-r mMirrorForRtl:Z

.field private greylist-max-o mNoInvalidate:Z

.field private greylist mOnlyIndeterminate:Z

.field private blacklist mPercentFormat:Ljava/text/NumberFormat;

.field private greylist-max-o mProgress:I

.field private greylist-max-o mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

.field private final greylist-max-o mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRefreshIsPosted:Z

.field private greylist-max-o mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field private blacklist mRoundStrokeWidth:I

.field greylist-max-o mSampleWidth:I

.field private greylist-max-o mSecondaryProgress:I

.field public blacklist mSemMin:I

.field public blacklist mSemMinEnabled:Z

.field private greylist-max-o mShouldStartAnimationDrawable:Z

.field private greylist-max-o mTransformation:Landroid/view/animation/Transformation;

.field private greylist-max-o mUiThreadId:J

.field private blacklist mUseHorizontalProgress:Z

.field private greylist-max-o mVisualProgress:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIndeterminateDrawable(Landroid/widget/ProgressBar;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMax(Landroid/widget/ProgressBar;)I
    .locals 0

    iget p0, p0, Landroid/widget/ProgressBar;->mMax:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMin(Landroid/widget/ProgressBar;)I
    .locals 0

    iget p0, p0, Landroid/widget/ProgressBar;->mMin:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRefreshData(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I
    .locals 0

    iget p0, p0, Landroid/widget/ProgressBar;->mRoundStrokeWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisualProgress(Landroid/widget/ProgressBar;)F
    .locals 0

    iget p0, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastProgressAnimator(Landroid/widget/ProgressBar;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRefreshIsPosted(Landroid/widget/ProgressBar;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisualProgress(Landroid/widget/ProgressBar;F)V
    .locals 0

    iput p1, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoRefreshProgress(Landroid/widget/ProgressBar;IIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetVisualProgress(Landroid/widget/ProgressBar;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROGRESS_ANIM_INTERPOLATOR()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    sget-object v0, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 186
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/ProgressBar;->DEBUG:Z

    .line 192
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 372
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 377
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 380
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    .line 263
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 341
    iput v0, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    .line 349
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mUseHorizontalProgress:Z

    .line 2791
    new-instance v1, Landroid/widget/ProgressBar$2;

    const-string/jumbo v2, "visual_progress"

    invoke-direct {v1, p0, v2}, Landroid/widget/ProgressBar$2;-><init>(Landroid/widget/ProgressBar;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 382
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    .line 383
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    .line 385
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 387
    .local v1, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->ProgressBar:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/ProgressBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 390
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 393
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 395
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 400
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 402
    invoke-static {v3}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    :cond_1
    :goto_0
    const/16 v4, 0x9

    iget v5, p0, Landroid/widget/ProgressBar;->mDuration:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 411
    const/16 v4, 0xb

    iget v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 412
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 413
    const/16 v4, 0xc

    iget v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 414
    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 416
    const/16 v4, 0xa

    iget v5, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 418
    const/16 v4, 0xd

    const v5, 0x10a000b

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 421
    .local v4, "resID":I
    if-lez v4, :cond_2

    .line 422
    invoke-virtual {p0, p1, v4}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 425
    :cond_2
    const/16 v5, 0x1a

    iget v6, p0, Landroid/widget/ProgressBar;->mMin:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 426
    const/4 v5, 0x2

    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 428
    const/4 v5, 0x3

    iget v6, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 433
    const/4 v5, 0x4

    iget v6, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 436
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 438
    .local v5, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    .line 439
    invoke-static {v5}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 440
    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    :cond_4
    :goto_1
    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 449
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 451
    if-nez v6, :cond_6

    const/4 v6, 0x5

    iget-boolean v8, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v6, v0

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v2

    :goto_3
    invoke-virtual {p0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 454
    const/16 v6, 0xf

    iget-boolean v8, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 456
    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_8

    .line 457
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v8, :cond_7

    .line 458
    new-instance v8, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v8, v10}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 460
    :cond_7
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v10}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v6

    iput-object v6, v8, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBlendMode:Landroid/graphics/BlendMode;

    .line 462
    iget-object v6, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v2, v6, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 465
    :cond_8
    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 466
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v8, :cond_9

    .line 467
    new-instance v8, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v8, v10}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 469
    :cond_9
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v8, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 471
    iget-object v6, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v2, v6, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 474
    :cond_a
    const/16 v6, 0x13

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 475
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v8, :cond_b

    .line 476
    new-instance v8, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v8, v10}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 478
    :cond_b
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v10}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v6

    iput-object v6, v8, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

    .line 480
    iget-object v6, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v2, v6, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 483
    :cond_c
    const/16 v6, 0x12

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 484
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v8, :cond_d

    .line 485
    new-instance v8, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v8, v10}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 487
    :cond_d
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v8, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 489
    iget-object v6, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v2, v6, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 492
    :cond_e
    const/16 v6, 0x15

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 493
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v8, :cond_f

    .line 494
    new-instance v8, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v8, v10}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 496
    :cond_f
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 497
    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 496
    invoke-static {v6, v10}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v6

    iput-object v6, v8, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

    .line 498
    iget-object v6, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v2, v6, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 501
    :cond_10
    const/16 v6, 0x14

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 502
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v8, :cond_11

    .line 503
    new-instance v8, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v8, v10}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 505
    :cond_11
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v8, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 507
    iget-object v6, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v2, v6, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 510
    :cond_12
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 511
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v8, :cond_13

    .line 512
    new-instance v8, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v8, v10}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 514
    :cond_13
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v10}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v6

    iput-object v6, v8, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateBlendMode:Landroid/graphics/BlendMode;

    .line 516
    iget-object v6, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v2, v6, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 519
    :cond_14
    const/16 v6, 0x16

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 520
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v8, :cond_15

    .line 521
    new-instance v8, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v8, v10}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 523
    :cond_15
    iget-object v8, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v8, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 525
    iget-object v6, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v2, v6, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 528
    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 530
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .line 531
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 534
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_17

    .line 535
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setImportantForAccessibility(I)V

    .line 538
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Landroid/widget/ProgressBar;->mDensity:F

    .line 540
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 541
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x11200ba

    invoke-virtual {v8, v9, v6, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 543
    iget v8, v6, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_18

    move v0, v2

    :cond_18
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mIsDeviceDefaultDark:Z

    .line 545
    sget-object v0, Lcom/android/internal/R$styleable;->SemProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 547
    .local v0, "ta":Landroid/content/res/TypedArray;
    iget-boolean v2, p0, Landroid/widget/ProgressBar;->mUseHorizontalProgress:Z

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mUseHorizontalProgress:Z

    .line 549
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 551
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v7, 0x103012b

    invoke-direct {v2, p1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 552
    .local v2, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809b5

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalXsmall:Landroid/graphics/drawable/Drawable;

    .line 553
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809b1

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalSmall:Landroid/graphics/drawable/Drawable;

    .line 554
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809af

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalMedium:Landroid/graphics/drawable/Drawable;

    .line 555
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809ad

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalLarge:Landroid/graphics/drawable/Drawable;

    .line 556
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809b3

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalXlarge:Landroid/graphics/drawable/Drawable;

    .line 557
    new-instance v7, Landroid/widget/ProgressBar$CircleAnimationCallback;

    invoke-direct {v7, p0}, Landroid/widget/ProgressBar$CircleAnimationCallback;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v7, p0, Landroid/widget/ProgressBar;->mCircleAnimationCallback:Landroid/widget/ProgressBar$CircleAnimationCallback;

    .line 559
    return-void
.end method

.method private greylist-max-o applyIndeterminateTint()V
    .locals 3

    .line 1016
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_3

    .line 1017
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1018
    .local v0, "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    .line 1019
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 1021
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 1022
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1025
    :cond_1
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 1026
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1031
    :cond_2
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1032
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1036
    .end local v0    # "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private greylist-max-o applyPrimaryProgressTint()V
    .locals 2

    .line 1150
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v0, :cond_3

    .line 1152
    :cond_0
    const v0, 0x102000d

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1153
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1154
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    .line 1155
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1157
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 1158
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1163
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1164
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1168
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private greylist-max-o applyProgressBackgroundTint()V
    .locals 2

    .line 1175
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v0, :cond_3

    .line 1177
    :cond_0
    const/high16 v0, 0x1020000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1178
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1179
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1182
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 1183
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1188
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1189
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1193
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private greylist-max-o applyProgressTints()V
    .locals 1

    .line 1138
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 1139
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 1140
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1141
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1143
    :cond_0
    return-void
.end method

.method private greylist-max-o applySecondaryProgressTint()V
    .locals 2

    .line 1200
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v0, :cond_3

    .line 1202
    :cond_0
    const v0, 0x102000f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1203
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1204
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    .line 1205
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1207
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 1208
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1213
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1214
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1218
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private blacklist colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .line 2826
    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    .line 2827
    .local v1, "EMPTY":[[I
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private declared-synchronized greylist-max-o doRefreshProgress(IIZZZ)V
    .locals 15
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    move-object v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    monitor-enter p0

    .line 1723
    :try_start_0
    iget v3, v1, Landroid/widget/ProgressBar;->mMax:I

    iget v4, v1, Landroid/widget/ProgressBar;->mMin:I

    sub-int/2addr v3, v4

    .line 1724
    .local v3, "range":I
    if-lez v3, :cond_0

    sub-int v4, v2, v4

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1725
    .local v4, "scale":F
    :goto_0
    const v5, 0x102000d

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    .line 1727
    .local v5, "isPrimary":Z
    :goto_1
    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v8, v4

    float-to-int v8, v8

    .line 1728
    .local v8, "level":I
    iget-object v9, v1, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1729
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_9

    .line 1730
    const/4 v10, 0x0

    .line 1732
    .local v10, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v11, v9, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v11, :cond_4

    .line 1733
    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v10, v11

    .line 1734
    if-eqz v10, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1735
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1737
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_2
    if-eqz v10, :cond_3

    move-object v11, v10

    goto :goto_2

    :cond_3
    move-object v11, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_5

    .line 1738
    :cond_4
    instance-of v11, v9, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v11, :cond_8

    .line 1739
    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v11

    .line 1741
    .local v11, "numStates":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v11, :cond_7

    .line 1742
    move-object v13, v9

    check-cast v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1743
    .local v13, "mStateDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 1745
    instance-of v14, v13, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_5

    .line 1746
    move-object v14, v13

    check-cast v14, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v10, v14

    .line 1748
    if-eqz v10, :cond_5

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1749
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1752
    :cond_5
    if-eqz v10, :cond_6

    move-object v14, v10

    goto :goto_4

    :cond_6
    move-object v14, v9

    :goto_4
    invoke-virtual {v14, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1741
    nop

    .end local v13    # "mStateDrawable":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1754
    .end local v11    # "numStates":I
    .end local v12    # "i":I
    :cond_7
    goto :goto_5

    .line 1755
    :cond_8
    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1758
    .end local v10    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_5
    goto :goto_6

    .line 1759
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 1763
    :goto_6
    if-eqz v5, :cond_a

    if-eqz p5, :cond_a

    .line 1764
    iget-object v10, v1, Landroid/widget/ProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    new-array v11, v7, [F

    aput v4, v11, v6

    invoke-static {p0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1765
    .local v6, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1766
    const-wide/16 v10, 0x50

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1767
    sget-object v7, Landroid/widget/ProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1768
    new-instance v7, Landroid/widget/ProgressBar$1;

    invoke-direct {v7, p0}, Landroid/widget/ProgressBar$1;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1774
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 1775
    iput-object v6, v1, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 1776
    .end local v6    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_7

    .line 1777
    :cond_a
    if-eqz v5, :cond_b

    iget-object v6, v1, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_b

    .line 1778
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1779
    const/4 v6, 0x0

    iput-object v6, v1, Landroid/widget/ProgressBar;->mLastProgressAnimator:Landroid/animation/ObjectAnimator;

    .line 1781
    :cond_b
    invoke-direct {p0, v0, v4}, Landroid/widget/ProgressBar;->setVisualProgress(IF)V

    .line 1784
    :goto_7
    if-eqz v5, :cond_c

    if-eqz p4, :cond_c

    .line 1785
    move/from16 v6, p3

    invoke-virtual {p0, v4, v6, v2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 1784
    :cond_c
    move/from16 v6, p3

    .line 1787
    :goto_8
    monitor-exit p0

    return-void

    .line 1722
    .end local v3    # "range":I
    .end local v4    # "scale":F
    .end local v5    # "isPrimary":Z
    .end local v8    # "level":I
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "fromUser":Z
    .end local p4    # "callBackToApp":Z
    .end local p5    # "animate":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist formatStateDescription(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "progress"    # I

    .line 1812
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 1813
    .local v0, "curLocale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1814
    iput-object v0, p0, Landroid/widget/ProgressBar;->mCachedLocale:Ljava/util/Locale;

    .line 1815
    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mPercentFormat:Ljava/text/NumberFormat;

    .line 1817
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mPercentFormat:Ljava/text/NumberFormat;

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->getPercent(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getPercent(I)F
    .locals 7
    .param p1, "progress"    # I

    .line 1790
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    .line 1791
    .local v0, "maxProgress":F
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    .line 1792
    .local v1, "minProgress":F
    int-to-float v2, p1

    .line 1793
    .local v2, "currentProgress":F
    sub-float v3, v0, v1

    .line 1794
    .local v3, "diffProgress":F
    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_0

    .line 1795
    return v4

    .line 1797
    :cond_0
    sub-float v5, v2, v1

    div-float/2addr v5, v3

    .line 1798
    .local v5, "percent":F
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4
.end method

.method private greylist-max-o getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .line 1593
    const/4 v0, 0x0

    .line 1595
    .local v0, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1596
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1597
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1599
    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 1600
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1603
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1604
    move-object v0, v1

    .line 1608
    :cond_1
    return-object v0
.end method

.method private blacklist initCirCleStrokeWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .line 2737
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105044e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2738
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050453

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar;->mRoundStrokeWidth:I

    goto :goto_0

    .line 2739
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105044f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 2740
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050452

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar;->mRoundStrokeWidth:I

    goto :goto_0

    .line 2741
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105044d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 2742
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050450

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar;->mRoundStrokeWidth:I

    goto :goto_0

    .line 2744
    :cond_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050451

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar;->mRoundStrokeWidth:I

    .line 2746
    :goto_0
    return-void
.end method

.method private greylist-max-o initProgressBar()V
    .locals 2

    .line 774
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ProgressBar;->mMin:I

    .line 775
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 776
    iput v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 777
    iput v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 778
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 779
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 780
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 781
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 782
    const/16 v0, 0x18

    iput v0, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 783
    const/16 v1, 0x30

    iput v1, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 784
    iput v0, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 785
    iput v1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 786
    return-void
.end method

.method private blacklist initializeRoundCicleMode()V
    .locals 7

    .line 2806
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 2807
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2808
    new-instance v1, Landroid/widget/ProgressBar$CirCleProgressDrawable;

    iget-object v2, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    .line 2809
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060956

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ProgressBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Landroid/widget/ProgressBar$CirCleProgressDrawable;-><init>(Landroid/widget/ProgressBar;ZLandroid/content/res/ColorStateList;)V

    .line 2810
    .local v1, "primaryProgress":Landroid/widget/ProgressBar$CirCleProgressDrawable;
    new-instance v2, Landroid/widget/ProgressBar$CirCleProgressDrawable;

    iget-object v3, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    .line 2811
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060957

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ProgressBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ProgressBar$CirCleProgressDrawable;-><init>(Landroid/widget/ProgressBar;ZLandroid/content/res/ColorStateList;)V

    .line 2813
    .local v2, "background":Landroid/widget/ProgressBar$CirCleProgressDrawable;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 2814
    .local v3, "drawables":[Landroid/graphics/drawable/Drawable;
    aput-object v2, v3, v0

    .line 2815
    aput-object v1, v3, v4

    .line 2817
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2818
    .local v5, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 2819
    const/high16 v6, 0x1020000

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 2820
    const v0, 0x102000d

    invoke-virtual {v5, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 2822
    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2823
    return-void
.end method

.method private static greylist-max-o needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 637
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 638
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 639
    .local v0, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    .line 640
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 641
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 642
    return v2

    .line 640
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 645
    .end local v4    # "i":I
    :cond_1
    return v1

    .line 648
    .end local v0    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "N":I
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    .line 649
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 650
    .local v0, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v3

    .line 651
    .restart local v3    # "N":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 652
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/ProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 653
    return v2

    .line 651
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 656
    .end local v4    # "i":I
    :cond_4
    return v1

    .line 662
    .end local v0    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v3    # "N":I
    :cond_5
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    return v0
.end method

.method private declared-synchronized greylist-max-r refreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "animate"    # Z

    monitor-enter p0

    .line 1901
    :try_start_0
    iget-wide v0, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1902
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    goto :goto_0

    .line 1904
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_1

    .line 1905
    new-instance v0, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 1908
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object v0

    .line 1909
    .local v0, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1910
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_2

    .line 1911
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1912
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1915
    .end local v0    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1900
    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "fromUser":Z
    .end local p4    # "animate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist semSetIndeterminateProgressDrawable(I)V
    .locals 2
    .param p1, "width"    # I

    .line 2749
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105044b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 2750
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalXsmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2751
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105044a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 2752
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2753
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050449

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v0, p1, :cond_2

    .line 2754
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalMedium:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2755
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050448

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v0, p1, :cond_3

    .line 2756
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2758
    :cond_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateHorizontalXlarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2760
    :goto_0
    return-void
.end method

.method private greylist-max-o setVisualProgress(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .line 1863
    iput p2, p0, Landroid/widget/ProgressBar;->mVisualProgress:F

    .line 1865
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1867
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 1868
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1869
    if-nez v0, :cond_0

    .line 1874
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1878
    :cond_0
    if-eqz v0, :cond_1

    .line 1879
    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 1880
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1881
    .end local v1    # "level":I
    goto :goto_0

    .line 1882
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 1885
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    .line 1886
    return-void
.end method

.method private greylist-max-o swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 829
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 830
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 832
    if-eq v0, p1, :cond_2

    .line 833
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 836
    :cond_0
    iget-object v2, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 837
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 840
    :cond_2
    return-void
.end method

.method private greylist tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .line 675
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 676
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 677
    .local v0, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 678
    .local v2, "N":I
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    .line 680
    .local v3, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 681
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    .line 682
    .local v5, "id":I
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v5, v7, :cond_1

    const v7, 0x102000f

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v1

    :goto_2
    invoke-direct {p0, v6, v7}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    .line 680
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 686
    .end local v4    # "i":I
    :cond_2
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 687
    .local v1, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    .line 688
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 689
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 690
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 691
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 692
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 693
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 694
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 695
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 696
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 697
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 687
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 700
    .end local v4    # "i":I
    :cond_3
    return-object v1

    .line 703
    .end local v0    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "N":I
    .end local v3    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_6

    .line 704
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 705
    .local v0, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 706
    .local v1, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 707
    .restart local v2    # "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_5

    .line 708
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 707
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 711
    .end local v3    # "i":I
    :cond_5
    return-object v1

    .line 714
    .end local v0    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "out":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "N":I
    :cond_6
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_9

    .line 715
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 716
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 717
    .local v2, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 719
    iget v3, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    if-gtz v3, :cond_7

    .line 720
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/widget/ProgressBar;->mSampleWidth:I

    .line 723
    :cond_7
    if-eqz p2, :cond_8

    .line 724
    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v3

    .line 726
    :cond_8
    return-object v2

    .line 730
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    :cond_9
    return-object p1
.end method

.method private greylist-max-o tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 744
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 745
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 746
    .local v0, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 747
    .local v1, "N":I
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 748
    .local v2, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 750
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x2710

    if-ge v3, v1, :cond_0

    .line 751
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 752
    .local v5, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 753
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 750
    .end local v5    # "frame":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 755
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 756
    move-object p1, v2

    .line 758
    .end local v0    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "N":I
    .end local v2    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private greylist-max-o updateDrawableState()V
    .locals 5

    .line 2462
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 2463
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 2465
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 2466
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2467
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2470
    :cond_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 2471
    .local v3, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2472
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2475
    :cond_1
    if-eqz v1, :cond_2

    .line 2476
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 2478
    :cond_2
    return-void
.end method


# virtual methods
.method greylist-max-o drawTrack(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2389
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2390
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 2393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2396
    .local v1, "saveCount":I
    iget v2, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2398
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2399
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 2401
    :cond_0
    iget v2, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2404
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 2405
    .local v2, "time":J
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 2406
    iget-object v4, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 2407
    iget-object v4, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    .line 2409
    .local v4, "scale":F
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 2410
    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2412
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 2413
    nop

    .line 2414
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    goto :goto_1

    .line 2412
    :catchall_0
    move-exception v6

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 2413
    throw v6

    .line 2417
    .end local v4    # "scale":F
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2418
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2420
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_2

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_2

    .line 2421
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->start()V

    .line 2422
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 2425
    .end local v1    # "saveCount":I
    .end local v2    # "time":J
    :cond_2
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2482
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 2484
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2485
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2488
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2489
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2491
    :cond_1
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 0

    .line 2457
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2458
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 2459
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 2630
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2632
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    const-string/jumbo v1, "progress:max"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2633
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const-string/jumbo v1, "progress:progress"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2634
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    const-string/jumbo v1, "progress:secondaryProgress"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2635
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    const-string/jumbo v1, "progress:indeterminate"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2636
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2594
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1639
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method greylist-max-o getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .line 734
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 735
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public whitelist getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 853
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getIndeterminateTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 1012
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateBlendMode:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 942
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 996
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getIndeterminateTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 997
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 2278
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized whitelist getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 2078
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2078
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist getMaxHeight()I
    .locals 1

    .line 626
    iget v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    return v0
.end method

.method public whitelist getMaxWidth()I
    .locals 1

    .line 592
    iget v0, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    return v0
.end method

.method public declared-synchronized whitelist getMin()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 2063
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2063
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist getMinHeight()I
    .locals 1

    .line 609
    iget v0, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    return v0
.end method

.method public whitelist getMinWidth()I
    .locals 1

    .line 575
    iget v0, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    return v0
.end method

.method public greylist-max-o getMirrorForRtl()Z
    .locals 1

    .line 1131
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    return v0
.end method

.method public declared-synchronized whitelist getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 2030
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 2030
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist getProgressBackgroundTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 1460
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1387
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 1447
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressBackgroundTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 1448
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1068
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getProgressTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 1341
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBlendMode:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1263
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 1325
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 1326
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public declared-synchronized whitelist getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 2048
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .line 2048
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist getSecondaryProgressTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 1580
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1507
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 1564
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getSecondaryProgressTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    .line 1565
    .local v0, "mode":Landroid/graphics/BlendMode;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final declared-synchronized whitelist incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    monitor-enter p0

    .line 2149
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    monitor-exit p0

    return-void

    .line 2148
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p1    # "diff":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized whitelist incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    monitor-enter p0

    .line 2160
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    monitor-exit p0

    return-void

    .line 2159
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p1    # "diff":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 2305
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v0, :cond_1

    .line 2306
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2308
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/ProgressBar;->mScrollX:I

    iget v2, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v1, v2

    .line 2309
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ProgressBar;->mScrollY:I

    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    add-int/2addr v2, v3

    .line 2311
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    .line 2313
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    goto :goto_0

    .line 2314
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2317
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist isAnimating()Z
    .locals 1

    .line 2647
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized whitelist isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 796
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 796
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    .line 1650
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1651
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1652
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1653
    :cond_1
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 9

    .line 2555
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2556
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 2557
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 2559
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2560
    monitor-enter p0

    .line 2561
    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2562
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2563
    iget-object v2, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    .line 2564
    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v4, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v5, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v6, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 2565
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 2562
    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2567
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2568
    .end local v0    # "count":I
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2570
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 2571
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 2575
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 2576
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    goto :goto_0

    .line 2579
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCircleAnimationCallback:Landroid/widget/ProgressBar$CircleAnimationCallback;

    .line 2582
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2583
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2584
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    .line 2588
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2589
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 2590
    return-void
.end method

.method protected declared-synchronized whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 2380
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2382
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2383
    monitor-exit p0

    return-void

    .line 2379
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2600
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2601
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    iget v1, p0, Landroid/widget/ProgressBar;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2602
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2603
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2608
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2610
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2611
    const/4 v0, 0x0

    .line 2612
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    .line 2613
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    .line 2611
    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 2614
    .local v0, "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 2618
    .end local v0    # "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2619
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2620
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040610

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2622
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->formatStateDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 2625
    :cond_2
    :goto_0
    return-void
.end method

.method protected declared-synchronized whitelist onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 2429
    const/4 v0, 0x0

    .line 2430
    .local v0, "dw":I
    const/4 v1, 0x0

    .line 2432
    .local v1, "dh":I
    :try_start_0
    iget-object v2, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2433
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 2434
    iget v3, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .line 2435
    iget v3, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 2438
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 2440
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 2441
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 2443
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    .line 2444
    .local v4, "measuredWidth":I
    invoke-static {v1, p2, v3}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    .line 2447
    .local v3, "measuredHeight":I
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Landroid/widget/ProgressBar;->initCirCleStrokeWidth(I)V

    .line 2448
    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mUseHorizontalProgress:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v5, :cond_1

    .line 2449
    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Landroid/widget/ProgressBar;->semSetIndeterminateProgressDrawable(I)V

    .line 2452
    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2453
    monitor-exit p0

    return-void

    .line 2428
    .end local v0    # "dw":I
    .end local v1    # "dh":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-o onProgressRefresh(FZI)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .line 1842
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1844
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1845
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 1846
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1850
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 1851
    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V

    .line 1854
    :cond_1
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 1660
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1661
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1662
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1664
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1665
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1667
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1668
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1670
    :cond_2
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2546
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    .line 2547
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2549
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2550
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 2551
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 2535
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2536
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2538
    .local v1, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v1, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 2539
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v1, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 2541
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 2321
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 2322
    return-void
.end method

.method protected blacklist onSlidingRefresh(I)V
    .locals 4
    .param p1, "level"    # I

    .line 2723
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2724
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 2725
    const/4 v1, 0x0

    .line 2727
    .local v1, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 2728
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2730
    :cond_0
    if-eqz v1, :cond_1

    .line 2731
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2734
    .end local v1    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 2283
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 2285
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_2

    .line 2286
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mAggregatedIsVisible:Z

    .line 2288
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 2290
    if-eqz p1, :cond_0

    .line 2291
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0

    .line 2293
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 2297
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2298
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2301
    :cond_2
    return-void
.end method

.method greylist-max-o onVisualProgressChanged(IF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .line 1896
    return-void
.end method

.method public whitelist postInvalidate()V
    .locals 1

    .line 1674
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1675
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1677
    :cond_0
    return-void
.end method

.method protected blacklist semGetProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1395
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected blacklist semGetProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1271
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist semSetMin(I)V
    .locals 1
    .param p1, "min"    # I

    .line 2681
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ProgressBar;->mMin:I

    .line 2682
    iput p1, p0, Landroid/widget/ProgressBar;->mSemMin:I

    .line 2683
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mSemMinEnabled:Z

    .line 2684
    return-void
.end method

.method public whitelist semSetMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2696
    iput p1, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    .line 2698
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2714
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initializeRoundCicleMode()V

    goto :goto_0

    .line 2707
    :pswitch_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    const v1, 0x1080bed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2709
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2710
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2700
    .end local v0    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    const v1, 0x1080be6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2702
    .restart local v0    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2703
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 2717
    .end local v0    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized whitelist setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 811
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_2

    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_2

    .line 812
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 814
    if-eqz p1, :cond_1

    .line 816
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 823
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->notifyViewAccessibilityStateChangedIfNeeded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    :cond_2
    monitor-exit p0

    return-void

    .line 810
    .end local p1    # "indeterminate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 874
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 875
    if-eqz v0, :cond_1

    .line 877
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mUseHorizontalProgress:Z

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 881
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 882
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 885
    :cond_1
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 887
    if-eqz p1, :cond_3

    .line 888
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 889
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 890
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 893
    :cond_2
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 896
    :cond_3
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_5

    .line 898
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mUseHorizontalProgress:Z

    if-eqz v0, :cond_4

    .line 899
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 902
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 906
    :cond_5
    return-void
.end method

.method public whitelist setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1050
    if-eqz p1, :cond_0

    .line 1051
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1054
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    return-void
.end method

.method public whitelist setIndeterminateTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 975
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 978
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateBlendMode:Landroid/graphics/BlendMode;

    .line 979
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 981
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 982
    return-void
.end method

.method public whitelist setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 925
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 926
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 928
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 929
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 931
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyIndeterminateTint()V

    .line 932
    return-void
.end method

.method public whitelist setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 958
    if-eqz p1, :cond_0

    .line 959
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 958
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 960
    return-void
.end method

.method public whitelist setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .line 2245
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2246
    return-void
.end method

.method public whitelist setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 2265
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2266
    return-void
.end method

.method public declared-synchronized whitelist setMax(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 2122
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_0

    .line 2123
    iget v1, p0, Landroid/widget/ProgressBar;->mMin:I

    if-ge p1, v1, :cond_0

    .line 2124
    move p1, v1

    .line 2127
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mMaxInitialized:Z

    .line 2128
    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 2129
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 2130
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 2132
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 2133
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 2135
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V

    goto :goto_0

    .line 2137
    :cond_2
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2139
    :goto_0
    monitor-exit p0

    return-void

    .line 2121
    .end local p1    # "max":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .line 618
    iput p1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 619
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 620
    return-void
.end method

.method public whitelist setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .line 584
    iput p1, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 585
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 586
    return-void
.end method

.method public declared-synchronized whitelist setMin(I)V
    .locals 3
    .param p1, "min"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 2092
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    .line 2093
    iget v1, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v1, :cond_0

    .line 2094
    move p1, v1

    .line 2097
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mMinInitialized:Z

    .line 2098
    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    if-eq p1, v0, :cond_2

    .line 2099
    iput p1, p0, Landroid/widget/ProgressBar;->mMin:I

    .line 2100
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 2102
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 2103
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 2105
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V

    goto :goto_0

    .line 2107
    :cond_2
    iput p1, p0, Landroid/widget/ProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2109
    :goto_0
    monitor-exit p0

    return-void

    .line 2091
    .end local p1    # "min":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setMinHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 601
    iput p1, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 602
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 603
    return-void
.end method

.method public whitelist setMinWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 567
    iput p1, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 568
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 569
    return-void
.end method

.method public declared-synchronized whitelist setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 1934
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    monitor-exit p0

    return-void

    .line 1933
    .end local p0    # "this":Landroid/widget/ProgressBar;
    .end local p1    # "progress":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .line 1949
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    .line 1950
    return-void
.end method

.method public whitelist setProgressBackgroundTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1427
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1428
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1430
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

    .line 1431
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1433
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1434
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1436
    :cond_1
    return-void
.end method

.method public whitelist setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1366
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1367
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1369
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1370
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1372
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1373
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressBackgroundTint()V

    .line 1375
    :cond_1
    return-void
.end method

.method public whitelist setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1410
    if-eqz p1, :cond_0

    .line 1411
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1410
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1412
    return-void
.end method

.method public whitelist setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1079
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_7

    .line 1080
    if-eqz v0, :cond_0

    .line 1081
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1082
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1085
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1087
    if-eqz p1, :cond_5

    .line 1088
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1089
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1090
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1096
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1097
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 1098
    .local v0, "drawableWidth":I
    iget v1, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    if-ge v1, v0, :cond_2

    .line 1099
    iput v0, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 1100
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 1102
    .end local v0    # "drawableWidth":I
    :cond_2
    goto :goto_0

    .line 1103
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 1104
    .local v0, "drawableHeight":I
    iget v1, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_4

    .line 1105
    iput v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 1106
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 1110
    .end local v0    # "drawableHeight":I
    :cond_4
    :goto_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyProgressTints()V

    .line 1113
    :cond_5
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_6

    .line 1114
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1115
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1118
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1119
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1121
    const v3, 0x102000d

    iget v4, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 1122
    const v9, 0x102000f

    iget v10, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZZ)V

    .line 1124
    :cond_7
    return-void
.end method

.method public whitelist setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1623
    if-eqz p1, :cond_0

    .line 1624
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1627
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1628
    return-void
.end method

.method declared-synchronized greylist setProgressInternal(IZZ)Z
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 1955
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1957
    monitor-exit p0

    return v1

    .line 1960
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mSemMinEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/ProgressBar;->mSemMin:I

    goto :goto_0

    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    :goto_0
    iget v2, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-static {p1, v0, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    move p1, v0

    .line 1962
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    .line 1964
    monitor-exit p0

    return v1

    .line 1967
    .restart local p0    # "this":Landroid/widget/ProgressBar;
    :cond_2
    :try_start_2
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 1969
    iget v0, p0, Landroid/widget/ProgressBar;->mCurrentMode:I

    const/4 v1, 0x6

    const v2, 0x102000d

    if-ne v0, v1, :cond_3

    .line 1970
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 1971
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1972
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;

    if-eqz v1, :cond_3

    .line 1973
    move-object v1, v0

    check-cast v1, Landroid/widget/ProgressBar$CirCleProgressDrawable;

    invoke-virtual {v1, p1, p3}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->setProgress(IZ)V

    .line 1978
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_3
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v2, v0, p2, p3}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1979
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1954
    .end local p1    # "progress":I
    .end local p2    # "fromUser":Z
    .end local p3    # "animate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setProgressTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1302
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1303
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1305
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBlendMode:Landroid/graphics/BlendMode;

    .line 1306
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 1308
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1309
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 1311
    :cond_1
    return-void
.end method

.method public whitelist setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1242
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1243
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1245
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 1246
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 1248
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1249
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applyPrimaryProgressTint()V

    .line 1251
    :cond_1
    return-void
.end method

.method public whitelist setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1286
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1287
    return-void
.end method

.method public declared-synchronized whitelist setSecondaryProgress(I)V
    .locals 2
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 1997
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1998
    monitor-exit p0

    return-void

    .line 2001
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMin:I

    if-ge p1, v0, :cond_1

    .line 2002
    move p1, v0

    .line 2005
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_2

    .line 2006
    move p1, v0

    .line 2009
    :cond_2
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_3

    .line 2010
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 2011
    const v0, 0x102000f

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Landroid/widget/ProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2013
    .end local p0    # "this":Landroid/widget/ProgressBar;
    :cond_3
    monitor-exit p0

    return-void

    .line 1996
    .end local p1    # "secondaryProgress":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setSecondaryProgressTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1541
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1542
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1544
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

    .line 1545
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1547
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1548
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1550
    :cond_1
    return-void
.end method

.method public whitelist setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1485
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1486
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$ProgressTintInfo-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1488
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1489
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1491
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1492
    invoke-direct {p0}, Landroid/widget/ProgressBar;->applySecondaryProgressTint()V

    .line 1494
    :cond_1
    return-void
.end method

.method public whitelist setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1523
    if-eqz p1, :cond_0

    .line 1524
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1523
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgressTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1525
    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1838
    invoke-super {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 1839
    return-void
.end method

.method greylist startAnimation()V
    .locals 3

    .line 2168
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2172
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2173
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 2174
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 2176
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_5

    .line 2177
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mCircleAnimationCallback:Landroid/widget/ProgressBar$CircleAnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_2

    .line 2181
    :cond_1
    iput-boolean v2, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 2183
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 2184
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2187
    :cond_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 2188
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    goto :goto_0

    .line 2190
    :cond_3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 2193
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 2194
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    .line 2196
    :cond_4
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 2199
    :goto_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2200
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2201
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2202
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2203
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 2205
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 2206
    return-void

    .line 2169
    :cond_6
    :goto_3
    return-void
.end method

.method greylist stopAnimation()V
    .locals 3

    .line 2213
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 2214
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 2215
    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 2217
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_0

    .line 2218
    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v2, p0, Landroid/widget/ProgressBar;->mCircleAnimationCallback:Landroid/widget/ProgressBar$CircleAnimationCallback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 2221
    :cond_0
    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 2223
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 2224
    return-void
.end method

.method protected greylist-max-o updateDrawableBounds(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 2332
    iget v0, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    iget v1, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 2333
    iget v0, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v1, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 2335
    move v0, p1

    .line 2336
    .local v0, "right":I
    move v1, p2

    .line 2337
    .local v1, "bottom":I
    const/4 v2, 0x0

    .line 2338
    .local v2, "top":I
    const/4 v3, 0x0

    .line 2340
    .local v3, "left":I
    iget-object v4, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 2342
    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v5, :cond_1

    .line 2345
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 2346
    .local v4, "intrinsicWidth":I
    iget-object v5, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 2347
    .local v5, "intrinsicHeight":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 2348
    .local v6, "intrinsicAspect":F
    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    .line 2349
    .local v7, "boundAspect":F
    cmpl-float v8, v6, v7

    if-eqz v8, :cond_1

    .line 2350
    cmpl-float v8, v7, v6

    if-lez v8, :cond_0

    .line 2352
    int-to-float v8, p2

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 2353
    .local v8, "width":I
    sub-int v9, p1, v8

    div-int/lit8 v3, v9, 0x2

    .line 2354
    add-int v0, v3, v8

    .line 2355
    .end local v8    # "width":I
    goto :goto_0

    .line 2357
    :cond_0
    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 2358
    .local v8, "height":I
    sub-int v9, p2, v8

    div-int/lit8 v9, v9, 0x2

    .line 2359
    .end local v2    # "top":I
    .local v9, "top":I
    add-int v1, v9, v8

    move v2, v9

    .line 2364
    .end local v4    # "intrinsicWidth":I
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicAspect":F
    .end local v7    # "boundAspect":F
    .end local v8    # "height":I
    .end local v9    # "top":I
    .restart local v2    # "top":I
    :cond_1
    :goto_0
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2366
    move v4, v3

    .line 2367
    .local v4, "tempLeft":I
    sub-int v3, p1, v0

    .line 2368
    sub-int v0, p1, v4

    .line 2370
    .end local v4    # "tempLeft":I
    :cond_2
    iget-object v4, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2373
    :cond_3
    iget-object v4, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 2374
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2376
    :cond_4
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1644
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 1645
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

    .line 1644
    :goto_1
    return v0
.end method
