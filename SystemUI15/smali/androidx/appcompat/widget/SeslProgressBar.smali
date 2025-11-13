.class public Landroidx/appcompat/widget/SeslProgressBar;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public final VISUAL_PROGRESS:Landroidx/appcompat/widget/SeslProgressBar$1;

.field public mAccessibilityEventSender:Landroidx/appcompat/widget/SeslProgressBar$AccessibilityEventSender;

.field public mAggregatedIsVisible:Z

.field public mAnimation:Landroid/view/animation/AlphaAnimation;

.field public mAttached:Z

.field public final mBehavior:I

.field public mCachedLocale:Ljava/util/Locale;

.field public mCircleAnimationCallback:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

.field public mCirclePadding:I

.field public mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field public mCurrentMode:I

.field public final mDensity:F

.field public final mDuration:I

.field public mHasAnimation:Z

.field public mInDrawing:Z

.field public mIndeterminate:Z

.field public mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field public final mIndeterminateHorizontalLarge:Landroid/graphics/drawable/Drawable;

.field public final mIndeterminateHorizontalMedium:Landroid/graphics/drawable/Drawable;

.field public final mIndeterminateHorizontalSmall:Landroid/graphics/drawable/Drawable;

.field public final mIndeterminateHorizontalXlarge:Landroid/graphics/drawable/Drawable;

.field public final mIndeterminateHorizontalXsmall:Landroid/graphics/drawable/Drawable;

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mMax:I

.field public mMaxHeight:I

.field public mMaxInitialized:Z

.field public mMaxWidth:I

.field public mMin:I

.field public final mMinHeight:I

.field public mMinInitialized:Z

.field public final mMinWidth:I

.field public final mMirrorForRtl:Z

.field public final mNoInvalidate:Z

.field public mOnlyIndeterminate:Z

.field public mPercentFormat:Ljava/text/NumberFormat;

.field public mProgress:I

.field public mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field public mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

.field public final mRefreshData:Ljava/util/ArrayList;

.field public mRefreshIsPosted:Z

.field public mRefreshProgressRunnable:Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;

.field public mRoundStrokeWidth:I

.field public mSampleWidth:I

.field public mSecondaryProgress:I

.field public mShouldStartAnimationDrawable:Z

.field public mTransformation:Landroid/view/animation/Transformation;

.field public final mUiThreadId:J

.field public final mUseHorizontalProgress:Z

.field public mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mUseHorizontalProgress:Z

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSampleWidth:I

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMirrorForRtl:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    new-instance v2, Landroidx/appcompat/widget/SeslProgressBar$1;

    const-string/jumbo v3, "visual_progress"

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/widget/SeslProgressBar$1;-><init>(Landroidx/appcompat/widget/SeslProgressBar;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroidx/appcompat/widget/SeslProgressBar$1;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mUiThreadId:J

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    const/16 v2, 0x64

    iput v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSecondaryProgress:I

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    const/16 v2, 0xfa0

    iput v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mDuration:I

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mBehavior:I

    const/16 v2, 0x18

    iput v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinWidth:I

    const/16 v3, 0x30

    iput v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    iput v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinHeight:I

    iput v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    sget-object v6, Landroidx/appcompat/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v2

    move v9, p3

    move v10, p4

    :try_start_0
    invoke-virtual/range {v4 .. v10}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mNoInvalidate:Z

    const/16 p2, 0x8

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroidx/appcompat/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mDuration:I

    const/16 p3, 0x9

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mDuration:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinWidth:I

    const/16 p3, 0xb

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinWidth:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v2, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinHeight:I

    const/16 p3, 0xc

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinHeight:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v2, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mBehavior:I

    const/16 p3, 0xa

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mBehavior:I

    const p2, 0x10a000b

    const/16 p3, 0xd

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_2

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_2
    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    const/16 p3, 0x1a

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setMin(I)V

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    const/4 p3, 0x2

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    const/4 p3, 0x3

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 p3, 0x4

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V

    const/4 p2, 0x7

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {p2}, Landroidx/appcompat/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-eqz p3, :cond_5

    instance-of p3, p2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p3, :cond_4

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p3

    new-instance p4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v3

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    move v3, v1

    :goto_1
    const/16 v4, 0x2710

    if-ge v3, p3, :cond_3

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Landroidx/appcompat/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {p4, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/2addr v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p2, p4

    :cond_4
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    const/4 p3, 0x6

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mNoInvalidate:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    const/4 p3, 0x5

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    move v1, v0

    :cond_8
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminate(Z)V

    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMirrorForRtl:Z

    const/16 p3, 0xf

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMirrorForRtl:Z

    const/16 p2, 0x11

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 p4, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_a

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p3, :cond_9

    new-instance p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p3, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_9
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v0, p2, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    :cond_a
    const/16 p2, 0x10

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p3, :cond_b

    new-instance p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p3, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_b
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v0, p2, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    :cond_c
    const/16 p2, 0x13

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p3, :cond_d

    new-instance p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p3, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_d
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v0, p2, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    :cond_e
    const/16 p2, 0x12

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p3, :cond_f

    new-instance p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p3, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_f
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v0, p2, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    :cond_10
    const/16 p2, 0x15

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p3, :cond_11

    new-instance p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p3, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_11
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v0, p2, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    :cond_12
    const/16 p2, 0x14

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p3, :cond_13

    new-instance p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p3, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_13
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v0, p2, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    :cond_14
    const/16 p2, 0x17

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p3, :cond_15

    new-instance p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p3, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_15
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v0, p2, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    :cond_16
    const/16 p2, 0x16

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_18

    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p3, :cond_17

    new-instance p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p3, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_17
    iget-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v0, p2, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    :cond_18
    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mUseHorizontalProgress:Z

    const/16 p3, 0x1b

    invoke-virtual {v2, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mUseHorizontalProgress:Z

    new-instance p2, Landroidx/appcompat/view/ContextThemeWrapper;

    const p3, 0x7f14012b

    invoke-direct {p2, p1, p3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const v1, 0x7f0811ab

    invoke-virtual {p3, v1, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalXsmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const v1, 0x7f0811a7

    invoke-virtual {p3, v1, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const v1, 0x7f0811a5

    invoke-virtual {p3, v1, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalMedium:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const v1, 0x7f0811a3

    invoke-virtual {p3, v1, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p4, 0x7f0811a9

    invoke-virtual {p3, p4, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalXlarge:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->applyProgressTints()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->applyIndeterminateTint()V

    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_19

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mDensity:F

    new-instance p1, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;-><init>(Landroidx/appcompat/widget/SeslProgressBar;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCircleAnimationCallback:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    return-void

    :goto_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    return v2

    :cond_3
    instance-of p0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method


# virtual methods
.method public final applyIndeterminateTint()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_3

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final applyPrimaryProgressTint()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x102000d

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final applyProgressBackgroundTint()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    const/high16 v0, 0x1020000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final applyProgressTints()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x102000f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lez v2, :cond_0

    sub-int v5, p2, v3

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-lez v2, :cond_1

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    int-to-float v3, v3

    sub-float/2addr v4, v3

    int-to-float v2, v2

    div-float/2addr v4, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_1
    const v2, 0x102000d

    if-ne p1, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iget-object v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    instance-of v7, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_5

    move-object v7, v3

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_3
    if-eqz v7, :cond_4

    move-object v3, v7

    :cond_4
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_3

    :cond_5
    instance-of v7, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_6

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_3
    if-eqz v2, :cond_8

    if-eqz p5, :cond_8

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroidx/appcompat/widget/SeslProgressBar$1;

    const/4 p5, 0x2

    new-array p5, p5, [F

    aput v4, p5, v0

    aput v5, p5, v1

    invoke-static {p0, p1, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p5, Landroidx/appcompat/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v5, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setVisualProgress(FI)V

    :goto_4
    if-eqz v2, :cond_9

    if-eqz p4, :cond_9

    invoke-virtual {p0, v5, p3, p2}, Landroidx/appcompat/widget/SeslProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public drawTrack(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    iget-boolean v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mHasAnimation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroidx/appcompat/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mInDrawing:Z

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->mInDrawing:Z

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->mInDrawing:Z

    throw p1

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz p1, :cond_2

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_2

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->updateDrawableState()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMin()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPaddingLeft()I
    .locals 0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final getPaddingRight()I
    .locals 0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p0, :cond_0

    move-object p0, v0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final initCirCleStrokeWidth(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0712c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f0712cb

    const v3, 0x7f0712ce

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCirclePadding:I

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0712c6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0712cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0712cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCirclePadding:I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0712c4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0712ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0712c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCirclePadding:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0712c7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0712d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0712cf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCirclePadding:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/2addr v0, p1

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCirclePadding:I

    :goto_0
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mInDrawing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v2

    invoke-virtual {p0, v0, v3, v4, p1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->startAnimation$1()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;

    iget v4, v2, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->id:I

    iget v5, v2, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v6, v2, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->fromUser:Z

    iget-boolean v8, v2, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->animate:Z

    const/4 v7, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    sget-object v3, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v3, v2}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAttached:Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->stopAnimation$1()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCircleAnimationCallback:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshIsPosted:Z

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAccessibilityEventSender:Landroidx/appcompat/widget/SeslProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAttached:Z

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "string"

    const-string v2, "android"

    const-string v3, "in_progress"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mPercentFormat:Ljava/text/NumberFormat;

    if-nez v2, :cond_4

    :cond_3
    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCachedLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mPercentFormat:Ljava/text/NumberFormat;

    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v2, p0

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_5

    goto :goto_1

    :cond_5
    int-to-float v0, v0

    sub-float/2addr v0, p0

    div-float/2addr v0, v2

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {v0, v3, p0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    :goto_1
    float-to-double v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinWidth:I

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinHeight:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->updateDrawableState()V

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v3

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    invoke-static {v3, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v2, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->initCirCleStrokeWidth(I)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mUseHorizontalProgress:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->seslSetIndeterminateProgressDrawable(I)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onProgressRefresh(FZI)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "accessibility"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAccessibilityEventSender:Landroidx/appcompat/widget/SeslProgressBar$AccessibilityEventSender;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/widget/SeslProgressBar$AccessibilityEventSender;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Landroidx/appcompat/widget/SeslProgressBar$AccessibilityEventSender;-><init>(Landroidx/appcompat/widget/SeslProgressBar;Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAccessibilityEventSender:Landroidx/appcompat/widget/SeslProgressBar$AccessibilityEventSender;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAccessibilityEventSender:Landroidx/appcompat/widget/SeslProgressBar$AccessibilityEventSender;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSecondaryProgress:I

    iget p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    if-le p1, p3, :cond_2

    if-nez p2, :cond_2

    const p2, 0x102000f

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Landroidx/appcompat/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    :cond_2
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_2
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget p1, p1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    iput v0, v1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;->progress:I

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSecondaryProgress:I

    iput p0, v1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->updateDrawableBounds(II)V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->startAnimation$1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->stopAnimation$1()V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public onVisualProgressChanged(FI)V
    .locals 0

    return-void
.end method

.method public final postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized refreshProgress(IIZZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;-><init>(Landroidx/appcompat/widget/SeslProgressBar;Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->obtain(IIZZ)Landroidx/appcompat/widget/SeslProgressBar$RefreshData;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAttached:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshIsPosted:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mRefreshIsPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final seslSetIndeterminateProgressDrawable(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0712c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalXsmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0712c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v0, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0712c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalMedium:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0712bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lt v0, p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateHorizontalXlarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->startAnimation$1()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->stopAnimation$1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mUseHorizontalProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->stopAnimation$1()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->applyIndeterminateTint()V

    :cond_3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mUseHorizontalProgress:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->startAnimation$1()V

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    if-ge p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    :cond_1
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    const/4 v0, 0x0

    const v1, 0x102000d

    invoke-virtual {p0, v1, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    goto :goto_1

    :cond_2
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    :cond_1
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    const/4 v0, 0x0

    const v1, 0x102000d

    invoke-virtual {p0, v1, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    goto :goto_1

    :cond_2
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_6

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    if-ge v1, v0, :cond_3

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_3

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->applyProgressTints()V

    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->updateDrawableBounds(II)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->updateDrawableState()V

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v2, 0x102000d

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    iget v9, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v8, 0x102000f

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_6
    return-void
.end method

.method public declared-synchronized setProgressInternal(IZZ)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    invoke-static {p1, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    int-to-float v0, v0

    :try_start_2
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    const v3, 0x102000d

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    if-eqz p3, :cond_2

    iget-object v1, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->VISUAL_CIRCLE_PROGRESS:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Landroidx/appcompat/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    iput p1, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mProgress:I

    iget-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {p0, v3, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressTintInfo:Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 v0, 0x0

    const v1, 0x102000f

    invoke-virtual {p0, v1, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final setVisualProgress(FI)V
    .locals 2

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mVisualProgress:F

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->onVisualProgressChanged(FI)V

    return-void
.end method

.method public final startAnimation$1()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mHasAnimation:Z

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCircleAnimationCallback:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_2

    :cond_0
    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mHasAnimation:Z

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    return-void
.end method

.method public final stopAnimation$1()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mHasAnimation:Z

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCircleAnimationCallback:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    return-void
.end method

.method public final swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public final tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_2

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x102000d

    if-eq v4, v6, :cond_1

    const v6, 0x102000f

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v1

    :goto_2
    invoke-virtual {p0, v5, v4}, Landroidx/appcompat/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_3
    if-ge v2, p2, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-object p0

    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-object p0

    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSampleWidth:I

    if-gtz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mSampleWidth:I

    :cond_6
    if-eqz p2, :cond_7

    new-instance p0, Landroid/graphics/drawable/ClipDrawable;

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object p0

    :cond_7
    return-object p1
.end method

.method public updateDrawableBounds(II)V
    .locals 10

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v4, v2, v3

    sub-float v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    sub-int v2, p1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    move v2, p1

    move v3, v1

    move v9, v0

    move v0, p2

    move p2, v9

    goto :goto_0

    :cond_1
    move v2, p1

    move v0, v1

    move v3, v0

    :goto_0
    iget-boolean v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    sub-int v2, p1, v2

    sub-int/2addr p1, v3

    move v3, v2

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    return-void
.end method

.method public final updateDrawableState()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
