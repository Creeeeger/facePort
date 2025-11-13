.class public abstract Landroidx/appcompat/widget/SeslAbsSeekBar;
.super Landroidx/appcompat/widget/SeslProgressBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentProgressLevel:I

.field public mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

.field public mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

.field public final mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

.field public final mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

.field public final mDisabledAlpha:F

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public final mGestureExclusionRects:Ljava/util/List;

.field public mHasThumbTint:Z

.field public final mHasThumbTintMode:Z

.field public final mHasTickMarkTint:Z

.field public final mHasTickMarkTintMode:Z

.field public mHoveringLevel:I

.field public mIsDragging:Z

.field public mIsDraggingForSliding:Z

.field public mIsFirstSetProgress:Z

.field public final mIsHapticEnabled:Z

.field public final mIsLightTheme:Z

.field public mIsSetModeCalled:Z

.field public final mIsUserSeekable:Z

.field public mKeyProgressIncrement:I

.field public mLevelDrawPadding:F

.field public final mModeExpandThumbRadius:I

.field public final mModeExpandTrackMaxWidth:I

.field public final mModeExpandTrackMinWidth:I

.field public mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field public final mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

.field public mPreviousHoverPopupType:I

.field public final mScaledTouchSlop:I

.field public mSplitProgress:Landroid/graphics/drawable/Drawable;

.field public final mSplitTrack:Z

.field public final mTempRect:Landroid/graphics/Rect;

.field public mThumb:Landroid/graphics/drawable/Drawable;

.field public mThumbOffset:I

.field public mThumbPosX:I

.field public final mThumbRadius:I

.field public final mThumbRect:Landroid/graphics/Rect;

.field public mThumbTintList:Landroid/content/res/ColorStateList;

.field public final mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mTickMark:Landroid/graphics/drawable/Drawable;

.field public final mTickMarkTintList:Landroid/content/res/ColorStateList;

.field public final mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mTouchDownX:F

.field public mTouchDownY:F

.field public final mTrackMaxWidth:I

.field public final mTrackMinWidth:I

.field public mUserGestureExclusionRects:Ljava/util/List;

.field public final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iput v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsSetModeCalled:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsSetModeCalled:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    iput v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsSetModeCalled:Z

    const/4 v3, 0x0

    iput v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    sget-object v6, Landroidx/appcompat/R$styleable;->AppCompatSeekBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    :try_start_0
    invoke-virtual/range {v4 .. v10}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 p4, 0x4

    invoke-virtual {v3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {v3, p4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-static {p4, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    const/4 p4, 0x3

    invoke-virtual {v3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    :cond_1
    const/16 p4, 0xa

    invoke-virtual {v3, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    const/16 p4, 0xc

    invoke-virtual {v3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-static {p4, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    :cond_2
    const/16 p4, 0xb

    invoke-virtual {v3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-boolean v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    :cond_3
    const/4 p4, 0x2

    invoke-virtual {v3, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mSplitTrack:Z

    const/4 p4, 0x5

    invoke-virtual {v3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsHapticEnabled:Z

    const p4, 0x7f0712f4

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    const/16 v0, 0x9

    invoke-virtual {v3, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    const p4, 0x7f0712f5

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    const p4, 0x7f0712ee

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v3, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMinWidth:I

    const p4, 0x7f0712ef

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v3, v4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMaxWidth:I

    const p4, 0x7f0712f2

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    const/4 v0, 0x7

    invoke-virtual {v3, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbRadius:I

    const p4, 0x7f0712ed

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v3, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandThumbRadius:I

    iget p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    invoke-virtual {v3, v2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p4, 0x6

    invoke-virtual {v3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    :cond_4
    const/16 p4, 0xd

    invoke-virtual {v3, p4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    if-eqz p4, :cond_5

    sget-object p4, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p1, p2, p4, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 p4, 0x3f000000    # 0.5f

    :try_start_1
    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDisabledAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsLightTheme:Z

    if-eqz p1, :cond_6

    const p2, 0x7f0607dc

    goto :goto_2

    :cond_6
    const p2, 0x7f0607dd

    :goto_2
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->colorToColorStateList$1(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    const p2, 0x7f0607de

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->colorToColorStateList$1(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    const p2, 0x7f0607db

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->colorToColorStateList$1(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_7

    const p2, 0x7f0607e5

    goto :goto_3

    :cond_7
    const p2, 0x7f0607e4

    :goto_3
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->colorToColorStateList$1(I)Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_8

    const p2, 0x7f0607e3

    goto :goto_4

    :cond_8
    const p2, 0x7f0607e2

    :goto_4
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->colorToColorStateList$1(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_a

    const p2, 0x101009e

    filled-new-array {p2}, [I

    move-result-object p2

    const p4, -0x101009e

    filled-new-array {p4}, [I

    move-result-object p4

    filled-new-array {p2, p4}, [[I

    move-result-object p2

    const p4, 0x7f060866

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    if-eqz p1, :cond_9

    const p1, 0x7f0607e0

    goto :goto_5

    :cond_9
    const p1, 0x7f0607df

    :goto_5
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    filled-new-array {p4, p1}, [I

    move-result-object p1

    new-instance p4, Landroid/content/res/ColorStateList;

    invoke-direct {p4, p2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    :cond_a
    const p1, 0x7f050082

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->initMuteAnimation()V

    :cond_b
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->initializeExpandMode()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_7
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static access$000(Landroidx/appcompat/widget/SeslAbsSeekBar;I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void
.end method

.method public static colorToColorStateList$1(I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method public static isHoverPopupTypeUserCustom(I)Z
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "com.samsung.android.widget.SemHoverPopupWindow"

    const-string v3, "hidden_TYPE_USER_CUSTOM"

    invoke-static {v2, v3, v1}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " InvocationTargetException"

    invoke-static {v1, v5, v6, v3, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IllegalArgumentException"

    invoke-static {v1, v5, v6, v3, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IllegalAccessException"

    invoke-static {v1, v5, v6, v3, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_0
    :goto_0
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public final applyThumbTint()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final applyTickMarkTint()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ltz v3, :cond_1

    div-int/lit8 v1, v3, 0x2

    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v4, v2

    neg-int v5, v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v0, :cond_2

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public final drawTrack(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->drawableHotspotChanged(FF)V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 2

    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "stack dump"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "SeslAbsSeekBar"

    const-string v1, "Stack:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-class p0, Landroid/widget/AbsSeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHoverPopupType()I
    .locals 6

    const-string v0, "SeslBaseReflector"

    sget-object v1, Landroidx/reflect/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    const-string v2, "semGetHoverPopupType"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Reflector did not find method = "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " InvocationTargetException"

    invoke-static {v1, v2, v5, v0, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IllegalArgumentException"

    invoke-static {v1, v2, v5, v0, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_1

    :catch_3
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IllegalAccessException"

    invoke-static {v1, v2, v5, v0, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_1
    instance-of p0, v4, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_0
    return v3
.end method

.method public final declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMin()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getScale()F
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    int-to-float v0, v1

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initMuteAnimation()V
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x190

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    filled-new-array {v2, v1}, [I

    move-result-object v5

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    :cond_1
    filled-new-array {v1, v2}, [I

    move-result-object v5

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    :goto_2
    const/16 v6, 0x3e

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroidx/appcompat/widget/SeslAbsSeekBar$2;

    invoke-direct {v6, p0}, Landroidx/appcompat/widget/SeslAbsSeekBar$2;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    int-to-double v4, v1

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-int v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method public final initializeExpandMode()V
    .locals 8

    new-instance v0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v1, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, v2, v3, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v2, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v2, p0, v3, v4, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v3, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;

    new-instance v4, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;

    iget v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbRadius:I

    iget-object v6, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v5, v6, v7}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;ILandroid/content/res/ColorStateList;Z)V

    invoke-direct {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v7

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v5, 0x13

    const/4 v6, 0x1

    invoke-direct {v0, v1, v5, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v0, v4, v6

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, v2, v5, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v1, 0x2

    aput-object v0, v4, v1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    const/high16 v2, 0x1020000

    invoke-virtual {v0, v7, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v2, 0x102000f

    invoke-virtual {v0, v6, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v2, 0x102000d

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-super {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0811c0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    if-le v0, v1, :cond_0

    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setHoverPopupGravity()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setHoverPopupOffset(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setHoverPopupDetectTime()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "com.samsung.android.widget.SemHoverPopupWindow"

    const-string v6, "setHoveringPoint"

    invoke-static {v4, v6, v3}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v6, " IllegalAccessException"

    const-string v7, " IllegalArgumentException"

    const-string v8, " InvocationTargetException"

    const-string v9, "SeslBaseReflector"

    if-eqz v3, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v1, v8, v9, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v1, v7, v9, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v1, v6, v9, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_2
    :goto_0
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    const-string v2, "hidden_update"

    invoke-static {v4, v2, v1}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2, v8, v9, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_1

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2, v7, v9, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_1

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2, v6, v9, v0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p0

    if-ge v0, p0, :cond_1

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v2, 0x3

    const/16 v3, 0x51

    const/16 v4, 0x46

    const/16 v5, 0x45

    const/4 v6, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_2

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_1
    neg-int v0, v0

    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    neg-int v0, v0

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v6, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return v6

    :cond_4
    :goto_0
    const/16 v1, 0x13

    if-eq p1, v1, :cond_6

    const/16 v1, 0x14

    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_6

    goto :goto_1

    :cond_5
    neg-int v0, v0

    :cond_6
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    neg-int v0, v0

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v6, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return v6

    :cond_8
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_0
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinWidth:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinHeight:I

    iget v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_2
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinWidth:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMinHeight:I

    iget v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    :cond_4
    move v0, v1

    move v3, v0

    :goto_3
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v2

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-static {v2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v3, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public onProgressRefresh(FZI)V
    .locals 3

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->onProgressRefresh(FZI)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v1, v0, p1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    const/16 p1, 0x29

    if-eqz p2, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsHapticEnabled:Z

    if-eqz p2, :cond_5

    iget p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result p2

    if-eq p3, p2, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p2

    if-ne p3, p2, :cond_5

    :cond_4
    invoke-static {p1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public final onResolveDrawables(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->onResolveDrawables(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getScale()F

    move-result v1

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateDrawableBounds(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDragging:Z

    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v3, :cond_8

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    :cond_3
    iput-boolean v3, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    if-eq v4, v5, :cond_5

    if-eq v4, v2, :cond_5

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTouchDownX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_7

    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    if-eq v0, v5, :cond_6

    if-ne v0, v2, :cond_f

    :cond_6
    iget v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTouchDownY:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    :cond_7
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_8
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    :cond_b
    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_e

    if-eq v0, v2, :cond_e

    if-eqz v0, :cond_e

    const-string v0, "SeslBaseReflector"

    sget-object v2, Landroidx/reflect/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    const-string v4, "hidden_isInScrollingContainer"

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "Reflector did not find method = "

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_c

    :try_start_1
    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " InvocationTargetException"

    invoke-static {v2, v6, v7, v0, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_2

    :catch_2
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " IllegalArgumentException"

    invoke-static {v2, v6, v7, v0, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_2

    :catch_3
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " IllegalAccessException"

    invoke-static {v2, v6, v7, v0, v4}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_2
    instance-of v0, v5, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_c
    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_e
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTouchDownY:F

    :cond_f
    :goto_4
    return v3

    :cond_10
    :goto_5
    return v1
.end method

.method public final onVisualProgressChanged(FI)V
    .locals 2

    const v0, 0x102000d

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, p2, p1, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1000

    const/16 v3, 0x2000

    if-eq p1, v0, :cond_5

    if-eq p1, v3, :cond_5

    const v0, 0x102003d

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-string p1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1, v1, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    monitor-enter p0

    :try_start_1
    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ne p1, v3, :cond_6

    neg-int p2, p2

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v1, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setHoverPopupDetectTime()V
    .locals 4

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-string v1, "com.samsung.android.widget.SemHoverPopupWindow"

    const-string v2, "hidden_setHoverDetectTime"

    invoke-static {v1, v2, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " InvocationTargetException"

    invoke-static {v0, v1, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IllegalArgumentException"

    invoke-static {v0, v1, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IllegalAccessException"

    invoke-static {v0, v1, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setHoverPopupGravity()V
    .locals 4

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-string v1, "com.samsung.android.widget.SemHoverPopupWindow"

    const-string v2, "hidden_setGravity"

    invoke-static {v1, v2, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3231

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " InvocationTargetException"

    invoke-static {v0, v1, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IllegalArgumentException"

    invoke-static {v0, v1, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IllegalAccessException"

    invoke-static {v0, v1, v3, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setHoverPopupOffset(I)V
    .locals 4

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.samsung.android.widget.SemHoverPopupWindow"

    const-string v3, "hidden_setOffset"

    invoke-static {v1, v3, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "SeslBaseReflector"

    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " InvocationTargetException"

    invoke-static {v0, p1, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IllegalArgumentException"

    invoke-static {v0, p1, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IllegalAccessException"

    invoke-static {v0, p1, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gez p1, :cond_1

    neg-int p1, p1

    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMin(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    div-int v0, p1, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    int-to-float p1, p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gez p1, :cond_1

    neg-int p1, p1

    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final setMode(I)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v0, p1

    iget v1, v6, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsSetModeCalled:Z

    if-eqz v1, :cond_0

    const-string v0, "SeslAbsSeekBar"

    const-string v1, "Seekbar mode is already set. Do not call this method redundant"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput v0, v6, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v7, 0x0

    const/4 v1, 0x4

    const v8, 0x102000d

    const/high16 v9, 0x1020000

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eq v0, v11, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v7, v6, Landroidx/appcompat/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminate(Z)V

    new-instance v2, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0607b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    new-array v4, v7, [I

    filled-new-array {v4}, [[I

    move-result-object v4

    new-instance v5, Landroid/content/res/ColorStateList;

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v5, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-direct {v2, v6, v7, v5}, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;-><init>(Landroidx/appcompat/widget/SeslProgressBar;ZLandroid/content/res/ColorStateList;)V

    new-instance v3, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0607b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    new-array v5, v7, [I

    filled-new-array {v5}, [[I

    move-result-object v5

    new-instance v13, Landroid/content/res/ColorStateList;

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-direct {v13, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-direct {v3, v6, v12, v13}, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;-><init>(Landroidx/appcompat/widget/SeslProgressBar;ZLandroid/content/res/ColorStateList;)V

    new-array v4, v10, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v4, v7

    aput-object v2, v4, v12

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    invoke-virtual {v2, v7, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v2, v12, v8}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-super {v6, v2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0811d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0811bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v6, v2, v7}, Landroidx/appcompat/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 v2, 0x0

    iput v2, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    if-eqz v0, :cond_d

    if-eq v0, v12, :cond_c

    const v2, 0x7f0811bf

    if-eq v0, v11, :cond_a

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    const v14, 0x102000f

    const v3, 0x7f0712ea

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f081171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {v6, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f081173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f081172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_6
    new-instance v15, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v2, v0

    iget v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v3, v0

    iget-object v4, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    new-instance v5, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v2, v0

    iget v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v3, v0

    iget-object v4, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    const/16 v16, 0x1

    move-object v0, v5

    move-object v13, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    new-instance v5, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMinWidth:I

    int-to-float v2, v0

    iget v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    int-to-float v3, v0

    iget-object v4, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    move-object v0, v5

    move-object v8, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;

    new-instance v1, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;

    iget v2, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbRadius:I

    iget-object v3, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, v6, v2, v3, v12}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;ILandroid/content/res/ColorStateList;Z)V

    invoke-direct {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-array v1, v11, [Landroid/graphics/drawable/Drawable;

    aput-object v15, v1, v7

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const/16 v3, 0x51

    invoke-direct {v2, v13, v3, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v2, v1, v12

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v2, v8, v3, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v2, v1, v10

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    invoke-virtual {v2, v7, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v2, v12, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v1, 0x102000d

    invoke-virtual {v2, v10, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-super {v6, v2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0811c0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, v6, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    iget v1, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTrackMaxWidth:I

    if-le v0, v1, :cond_e

    iput v1, v6, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_3

    :cond_7
    new-instance v0, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v1, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v1, v1

    iget v2, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v4, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, v6, v1, v2, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v1, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v2, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v2, v2

    iget v4, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v4, v4

    iget-object v5, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, v6, v2, v4, v5}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v2, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;

    iget v4, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v4, v4

    iget v5, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v5, v5

    iget-object v8, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v2, v6, v4, v5, v8}, Landroidx/appcompat/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v4, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;

    new-instance v5, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;

    iget v8, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandThumbRadius:I

    iget-object v13, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {v5, v6, v8, v13, v7}, Landroidx/appcompat/widget/SeslAbsSeekBar$ThumbDrawable;-><init>(Landroidx/appcompat/widget/SeslAbsSeekBar;ILandroid/content/res/ColorStateList;Z)V

    invoke-direct {v4, v5}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-array v5, v11, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v7

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x13

    invoke-direct {v0, v1, v8, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v0, v5, v12

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, v2, v8, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v0, v5, v10

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    invoke-virtual {v0, v7, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v0, v12, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v1, 0x102000d

    invoke-virtual {v0, v10, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-super {v6, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0811c0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, v6, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    iget v1, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mModeExpandTrackMaxWidth:I

    if-le v0, v1, :cond_8

    iput v1, v6, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0811d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0811d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateSplitProgress()V

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsLightTheme:Z

    if-eqz v1, :cond_b

    const v1, 0x7f0811b9

    goto :goto_2

    :cond_b
    const v1, 0x7f0811b8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    goto :goto_3

    :cond_d
    iget-object v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_e
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iput-boolean v12, v6, Landroidx/appcompat/widget/SeslAbsSeekBar;->mIsSetModeCalled:Z

    return-void
.end method

.method public final declared-synchronized setProgress(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setProgressInternal(IZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressInternal(IZZ)Z

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    return p2
.end method

.method public final setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final declared-synchronized setSecondaryProgress(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSystemGestureExclusionRects(Ljava/util/List;)V
    .locals 1

    const-string v0, "rects must not be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateGestureExclusionRects()V

    return-void
.end method

.method public final setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    return-void
.end method

.method public final setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 7

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v0

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p3, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/high16 p3, -0x80000000

    if-ne p4, p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    add-int p3, p4, v1

    :goto_0
    iget v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mLevelDrawPadding:F

    float-to-int v1, v1

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    sub-int p1, v2, p1

    :cond_2
    add-int/2addr v1, p1

    add-int p1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int v5, v1, v3

    add-int v6, p4, v4

    add-int/2addr v3, p1

    add-int/2addr v4, p3

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_3
    invoke-virtual {p2, v1, p4, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateGestureExclusionRects()V

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result p2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbPosX:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateSplitProgress()V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    return-void
.end method

.method public final setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p3, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/high16 p3, -0x80000000

    if-ne p4, p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    add-int p3, p4, v0

    :goto_0
    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    add-int v5, p4, v3

    add-int v6, v2, v4

    add-int/2addr v3, p3

    add-int/2addr v4, v1

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_1
    invoke-virtual {p2, p4, v2, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbPosX:I

    return-void
.end method

.method public final setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->applyThumbTint()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

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
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final startDrag(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public final supportIsHoveringUIEnabled()Z
    .locals 6

    sget-object v0, Landroidx/reflect/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isHoveringUIEnabled"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "SeslBaseReflector"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " InvocationTargetException"

    invoke-static {v0, v4, v5, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IllegalArgumentException"

    invoke-static {v0, v4, v5, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IllegalAccessException"

    invoke-static {v0, v4, v5, v2, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_0
    instance-of p0, v3, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final trackHoverEvent(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v1

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    return-void
.end method

.method public final trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_8

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v7

    sub-int v7, v1, v7

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_3

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v1, v8

    if-le v0, v1, :cond_1

    :goto_0
    move v1, v5

    goto :goto_3

    :cond_1
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_2

    :goto_1
    move v1, v6

    goto :goto_3

    :cond_2
    sub-int v1, v7, v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v1, v8

    :goto_2
    int-to-float v7, v7

    div-float/2addr v1, v7

    goto :goto_3

    :cond_3
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v8

    if-ge v0, v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v1, v8

    if-le v0, v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v7

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v8, v6, v7

    cmpl-float v9, v1, v5

    if-lez v9, :cond_6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_6

    rem-float v6, v1, v8

    div-float v4, v8, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_6

    sub-float/2addr v8, v6

    add-float/2addr v1, v8

    :cond_6
    mul-float/2addr v1, v7

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    add-float/2addr v1, v5

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4, v0, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_7
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v3, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    return-void

    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    if-ge p1, v8, :cond_9

    move v0, v5

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v0, v8

    if-le p1, v0, :cond_a

    move v0, v6

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    div-float v8, v6, v1

    cmpl-float v9, v0, v5

    if-lez v9, :cond_b

    cmpg-float v6, v0, v6

    if-gez v6, :cond_b

    rem-float v6, v0, v8

    div-float v4, v8, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_b

    sub-float/2addr v8, v6

    add-float/2addr v0, v8

    :cond_b
    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, v5

    int-to-float v1, v7

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4, v1, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v3, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method public final updateDrawableBounds(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->updateDrawableBounds(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method public final updateGestureExclusionRects()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final updateSplitProgress()V
    .locals 8

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mDensity:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v5, p0, v4

    div-float/2addr v5, v3

    sub-float v5, v0, v5

    float-to-int v5, v5

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float v7, p0, v6

    div-float/2addr v7, v3

    sub-float v7, v1, v7

    float-to-int v7, v7

    mul-float/2addr v4, p0

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    mul-float/2addr p0, v6

    div-float/2addr p0, v3

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v2, v5, v7, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void
.end method

.method public final updateThumbAndTrackPos(II)V
    .locals 8

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxHeight:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-nez v1, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    :goto_0
    if-le v5, v4, :cond_2

    sub-int/2addr p2, v5

    div-int/2addr p2, v3

    invoke-static {v5, v4, v3, p2}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v3

    goto :goto_1

    :cond_2
    sub-int/2addr p2, v4

    div-int/2addr p2, v3

    invoke-static {v4, v5, v3, p2}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v3

    move v7, v3

    move v3, p2

    move p2, v7

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getScale()F

    move-result v0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->updateSplitProgress()V

    return-void

    :cond_5
    :goto_2
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->mMaxWidth:I

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-nez v1, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    :goto_3
    if-le v5, v4, :cond_7

    sub-int v6, p1, v5

    div-int/2addr v6, v3

    invoke-static {v5, v4, v3, v6}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v3

    goto :goto_4

    :cond_7
    sub-int v6, p1, v4

    div-int/2addr v6, v3

    invoke-static {v4, v5, v3, v6}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v3

    move v7, v6

    move v6, v3

    move v3, v7

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr p1, v3

    invoke-virtual {v0, v3, v2, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getScale()F

    move-result p1

    invoke-virtual {p0, p2, v1, p1, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_9
    return-void
.end method

.method public final updateWarningMode(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->applyThumbTint()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
