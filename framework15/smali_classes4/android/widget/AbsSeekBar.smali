.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$SliderDrawable;,
        Landroid/widget/AbsSeekBar$ThumbDrawable;
    }
.end annotation


# static fields
.field private static final blacklist MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final blacklist MUTE_VIB_DURATION:I = 0x1f4

.field private static final blacklist MUTE_VIB_TOTAL:I = 0x4

.field private static final greylist-max-o NO_ALPHA:I = 0xff


# instance fields
.field private blacklist mAllowedSeekBarAnimation:Z

.field private blacklist mCurrentProgressLevel:I

.field private blacklist mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private blacklist mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private blacklist mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

.field private blacklist mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

.field private greylist mDisabledAlpha:F

.field private blacklist mDivider:Landroid/graphics/drawable/Drawable;

.field private final blacklist mGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasThumbBlendMode:Z

.field private greylist-max-o mHasThumbTint:Z

.field private blacklist mHasTickMarkBlendMode:Z

.field private greylist-max-o mHasTickMarkTint:Z

.field private blacklist mHoveringLevel:I

.field private greylist mIsDragging:Z

.field private blacklist mIsDraggingForSliding:Z

.field private blacklist mIsFirstSetProgress:Z

.field private blacklist mIsTouchDisabled:Z

.field greylist mIsUserSeekable:Z

.field private greylist-max-o mKeyProgressIncrement:I

.field private blacklist mLargeFont:Z

.field private blacklist mModeExpandThumbRadius:I

.field private blacklist mModeExpandTrackMaxWidth:I

.field private blacklist mModeExpandTrackMinWidth:I

.field private blacklist mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private blacklist mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private blacklist mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private blacklist mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

.field private blacklist mOverlapPoint:I

.field private greylist-max-o mScaledTouchSlop:I

.field private blacklist mSetDualColorMode:Z

.field private blacklist mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private greylist mSplitTrack:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist mThumb:Landroid/graphics/drawable/Drawable;

.field private blacklist mThumbBlendMode:Landroid/graphics/BlendMode;

.field private blacklist mThumbExclusionMaxSize:I

.field private greylist-max-o mThumbOffset:I

.field private blacklist mThumbPosX:I

.field private blacklist mThumbRadius:I

.field private final blacklist mThumbRect:Landroid/graphics/Rect;

.field private greylist-max-o mThumbTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTickMark:Landroid/graphics/drawable/Drawable;

.field private blacklist mTickMarkBlendMode:Landroid/graphics/BlendMode;

.field private greylist-max-o mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTouchDownX:F

.field private blacklist mTouchDownY:F

.field greylist mTouchProgressOffset:F

.field private blacklist mTouchThumbOffset:F

.field private blacklist mTrackMaxWidth:I

.field private blacklist mTrackMinWidth:I

.field private blacklist mUseMuteAnimation:Z

.field private blacklist mUserGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentProgressLevel(Landroid/widget/AbsSeekBar;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThumbPosX(Landroid/widget/AbsSeekBar;)I
    .locals 0

    iget p0, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentProgressLevel(Landroid/widget/AbsSeekBar;I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v12, v7, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    const/4 v0, 0x0

    iput v0, v7, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iput v11, v7, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    const/4 v13, -0x1

    iput v13, v7, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    sget-object v0, Lcom/android/internal/R$styleable;->SeekBar:[I

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v8, v9, v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    sget-object v2, Lcom/android/internal/R$styleable;->SeekBar:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v10, v6

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsSeekBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v10, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v2, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v1

    iput-object v1, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x7

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v10, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    :cond_2
    const/4 v3, 0x6

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v10, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v10, v12, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    const/16 v4, 0x8

    invoke-virtual {v10, v4, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_4

    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v8, v9, v5, v11, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v7, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10503ce

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mThumbExclusionMaxSize:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1050510

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Landroid/widget/AbsSeekBar;->mTrackMinWidth:I

    const v5, 0x1050511

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Landroid/widget/AbsSeekBar;->mTrackMaxWidth:I

    const v5, 0x105050b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    const v5, 0x105050c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    const v5, 0x105050e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Landroid/widget/AbsSeekBar;->mThumbRadius:I

    const v5, 0x105050a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v7, Landroid/widget/AbsSeekBar;->mModeExpandThumbRadius:I

    iget-boolean v5, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v5, :cond_5

    const v5, 0x10604ea

    goto :goto_1

    :cond_5
    const v5, 0x10604eb

    :goto_1
    nop

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v7, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    const v5, 0x10604ec

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v7, Landroid/widget/AbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->semGetProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    iget-object v5, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_7

    iget-boolean v5, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v5, :cond_6

    const v5, 0x10604e8

    goto :goto_2

    :cond_6
    const v5, 0x10604e9

    :goto_2
    nop

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    :cond_7
    iget-boolean v5, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v5, :cond_8

    const v5, 0x10604ef

    goto :goto_3

    :cond_8
    const v5, 0x10604f0

    :goto_3
    nop

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v7, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    iget-boolean v5, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v6, 0x10604ed

    const v11, 0x10604ee

    if-eqz v5, :cond_9

    move v5, v6

    goto :goto_4

    :cond_9
    move v5, v11

    :goto_4
    nop

    const/4 v12, 0x0

    invoke-virtual {v1, v5, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v7, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    const v5, 0x101009e

    filled-new-array {v5}, [I

    move-result-object v5

    const v12, -0x101009e

    filled-new-array {v12}, [I

    move-result-object v12

    filled-new-array {v5, v12}, [[I

    move-result-object v5

    nop

    iget-boolean v12, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v12, :cond_a

    goto :goto_5

    :cond_a
    move v6, v11

    :goto_5
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iget-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v13, 0x10604f2

    if-eqz v11, :cond_b

    const v11, 0x10604f1

    goto :goto_6

    :cond_b
    move v11, v13

    :goto_6
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    filled-new-array {v6, v11}, [I

    move-result-object v6

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v11, v7, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    iget-object v11, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v11, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    iget-object v11, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    if-nez v11, :cond_e

    nop

    iget-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v11, :cond_c

    const v11, 0x10604fe

    goto :goto_7

    :cond_c
    const v11, 0x10604ff

    :goto_7
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    iget-boolean v12, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v12, :cond_d

    const v12, 0x10604f1

    goto :goto_8

    :cond_d
    move v12, v13

    :goto_8
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    filled-new-array {v11, v12}, [I

    move-result-object v11

    move-object v6, v11

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v11, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    :cond_e
    const v11, 0x11102bf

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    iget-boolean v11, v7, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz v11, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    :cond_f
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/AbsSeekBar;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/AbsSeekBar;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    return v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/AbsSeekBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/AbsSeekBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private greylist-max-o applyThumbTint()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private greylist-max-o applyTickMarkTint()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private greylist-max-o attemptClaimDrag()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private blacklist cancelMuteAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private blacklist checkInvalidatedDualColorMode()Z
    .locals 2

    iget v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

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

.method private blacklist colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {p1}, [I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private greylist-max-o getScale()F
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    sub-int v2, v1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private blacklist initDualOverlapDrawable()V
    .locals 4

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v1, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    nop

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initMuteAnimation()V
    .locals 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0x1f4

    div-int/2addr v2, v1

    const/16 v3, 0x190

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    rem-int/lit8 v5, v4, 0x2

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    if-eqz v5, :cond_1

    filled-new-array {v6, v3}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    goto :goto_2

    :cond_1
    filled-new-array {v3, v6}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    :goto_2
    nop

    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v7, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_2

    int-to-double v7, v3

    const-wide v9, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v7, v9

    double-to-int v3, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method private blacklist initializeExpandMode()V
    .locals 10

    new-instance v0, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v1, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v1, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v2, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v2, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v3, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMinWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    new-instance v3, Landroid/widget/AbsSeekBar$ThumbDrawable;

    iget v4, p0, Landroid/widget/AbsSeekBar;->mModeExpandThumbRadius:I

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v4, v5, v6}, Landroid/widget/AbsSeekBar$ThumbDrawable;-><init>(Landroid/widget/AbsSeekBar;ILandroid/content/res/ColorStateList;Z)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v6

    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    const/16 v7, 0x13

    const/4 v8, 0x1

    invoke-direct {v5, v1, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v5, v4, v8

    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v5, v2, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    const/high16 v9, 0x1020000

    invoke-virtual {v5, v6, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v6, 0x102000f

    invoke-virtual {v5, v8, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v6, 0x102000d

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x1080ab2

    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMaxHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    if-le v6, v7, :cond_0

    iget v6, p0, Landroid/widget/AbsSeekBar;->mModeExpandTrackMaxWidth:I

    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->setMaxHeight(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o setHotspot(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method private blacklist setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private blacklist setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method private greylist-max-o setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v4

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    return-void

    :cond_0
    iget v4, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v4, p1, v4

    iget v5, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v4, v5

    iget v7, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    int-to-float v7, v4

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, -0x80000000

    if-ne v3, v8, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    move/from16 v9, p4

    add-int v8, v3, v6

    :goto_0
    iget-boolean v10, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_2

    sub-int v10, v4, v7

    goto :goto_1

    :cond_2
    move v10, v7

    :goto_1
    add-int v11, v10, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_3

    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v14, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v13, v14

    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    add-int v15, v10, v13

    add-int v2, v9, v14

    add-int v3, v11, v13

    move/from16 v16, v4

    add-int v4, v8, v14

    invoke-virtual {v12, v15, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_2

    :cond_3
    move/from16 v16, v4

    :goto_2
    invoke-virtual {v1, v10, v9, v11, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v2, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v2, v10

    iget v3, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    div-int/lit8 v4, v5, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateGestureExclusionRects()V

    return-void
.end method

.method private blacklist setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    iget v2, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v2, p1, v2

    iget v3, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v5, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    add-int v6, v1, v3

    :goto_0
    sub-int v8, v2, v5

    add-int v9, v8, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_1

    iget v11, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v12, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v12, v13

    add-int v13, v7, v11

    add-int v14, v8, v12

    add-int v15, v6, v11

    add-int v1, v9, v12

    invoke-virtual {v10, v13, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_1
    move-object/from16 v1, p2

    invoke-virtual {v1, v7, v8, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v8

    iget v12, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v11, v12

    iput v11, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    return-void
.end method

.method private greylist-max-o startDrag(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private blacklist startMuteAnimation()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private blacklist trackHoverEvent(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v3, v0, v3

    if-le p1, v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    float-to-int v5, v2

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    return-void
.end method

.method private greylist trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v3, v2, v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v2, v5

    if-le v0, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v0, v5, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    sub-int v5, v3, v0

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    add-float/2addr v5, v6

    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    :cond_3
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v0, v5, :cond_4

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v2, v5

    if-le v0, v5, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    add-float/2addr v5, v6

    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    cmpg-float v8, v5, v8

    if-gez v8, :cond_6

    rem-float v8, v5, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_6

    sub-float v9, v7, v8

    add-float/2addr v5, v9

    :cond_6
    int-to-float v8, v6

    mul-float/2addr v8, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v4, v8

    int-to-float v8, v0

    int-to-float v9, v1

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method private blacklist trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v1, v0, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v3, v0, v3

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v3, v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v5, v0, v5

    if-le v3, v5, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_2

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    rem-float v8, v5, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_2

    sub-float v9, v7, v8

    add-float/2addr v5, v9

    :cond_2
    int-to-float v8, v6

    mul-float/2addr v8, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v4, v8

    int-to-float v8, v2

    int-to-float v9, v3

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method private blacklist updateBoundsForDualColor()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateDualColorMode()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    return-void
.end method

.method private blacklist updateGestureExclusionRects()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbExclusionMaxSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->growRectTo(Landroid/graphics/Rect;I)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private blacklist updateSplitProgress()V
    .locals 12

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v7, v3

    div-float/2addr v7, v6

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    const/high16 v10, 0x41b00000    # 22.0f

    mul-float/2addr v9, v10

    div-float/2addr v9, v6

    sub-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v9, v2

    div-float/2addr v9, v6

    iget v11, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v11, v8

    div-float/2addr v11, v6

    add-float/2addr v9, v11

    float-to-int v8, v9

    int-to-float v9, v3

    div-float/2addr v9, v6

    iget v11, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v11, v10

    div-float/2addr v11, v6

    add-float/2addr v9, v11

    float-to-int v6, v9

    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void
.end method

.method private greylist-max-o updateThumbAndTrackPos(II)V
    .locals 10

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    :goto_0
    if-le v5, v3, :cond_2

    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    nop

    goto :goto_1

    :cond_2
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    move v7, v6

    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    :goto_1
    if-eqz v1, :cond_3

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p1, v2, v4, v6}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    return-void
.end method

.method private blacklist updateThumbAndTrackPosInVertical(II)V
    .locals 10

    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    :goto_0
    if-le v5, v3, :cond_1

    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    nop

    goto :goto_1

    :cond_1
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    move v7, v6

    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    :goto_1
    if-eqz v1, :cond_2

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    sub-int v9, v0, v7

    invoke-virtual {v1, v7, v4, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p2, v2, v4, v6}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3
    return-void
.end method

.method private blacklist updateWarningMode(I)V
    .locals 2

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method greylist-max-o canUserSetProgress()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-r drawThumb(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method protected greylist-max-o drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    div-int/lit8 v4, v2, 0x2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-ltz v3, :cond_1

    div-int/lit8 v1, v3, 0x2

    :cond_1
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v6, v4

    neg-int v7, v1

    invoke-virtual {v5, v6, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v7, 0x0

    :goto_1
    if-gt v7, v0, :cond_2

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method greylist-max-o drawTrack(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v4

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v4

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    :goto_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyProgressIncrement()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public whitelist getSplitTrack()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public whitelist getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getThumbHeight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getThumbOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public whitelist getThumbTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getTickMarkTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist growRectTo(Landroid/graphics/Rect;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p2, v0

    if-lez v0, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    if-lez v1, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist onHoverChanged(III)V
    .locals 0

    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v5}, Landroid/widget/AbsSeekBar;->trackHoverEvent(I)V

    iget v3, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v5}, Landroid/widget/AbsSeekBar;->trackHoverEvent(I)V

    iget v7, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v7, v5, v6}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    iget v7, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    if-ne v7, v3, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method greylist-max-o onKeyChange()V
    .locals 0

    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    neg-int v0, v0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-int v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    return v3

    :cond_1
    sparse-switch p1, :sswitch_data_1

    goto :goto_2

    :sswitch_2
    neg-int v0, v0

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    neg-int v1, v0

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    move v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    return v3

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x51 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method protected declared-synchronized whitelist onMeasure(II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    goto :goto_2

    :cond_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    :cond_3
    :goto_2
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-static {v1, p1, v3}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-static {v2, p2, v3}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist onProgressRefresh(FZI)V
    .locals 5

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->startMuteAnimation()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput v0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method protected blacklist onSlidingRefresh(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method blacklist onStartTrackingHover(III)V
    .locals 0

    return-void
.end method

.method greylist-max-o onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method blacklist onStopTrackingHover()V
    .locals 0

    return-void
.end method

.method greylist-max-o onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_2

    :pswitch_1
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_4

    :cond_3
    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    :cond_5
    goto/16 :goto_2

    :pswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    :cond_6
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v5, v0

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    :cond_8
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    :goto_2
    return v2

    :cond_b
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-o onVisualProgressChanged(IF)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    const v0, 0x102000d

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sparse-switch p1, :sswitch_data_0

    return v2

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_4

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0, v2, v1, v1}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    return v1

    :cond_4
    :goto_0
    return v2

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x2000

    if-ne p1, v4, :cond_6

    neg-int v3, v3

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v1, v1}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    return v1

    :cond_7
    return v2

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x102003d -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist semGetThumbBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist semSetHoverPopupType(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    div-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetHoverPopupType(I)V

    return-void
.end method

.method public whitelist semSetMode(I)V
    .locals 2

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetMode(I)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initializeExpandMode()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080cec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080ced

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080ce1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist semSetOverlapPointForDualColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initDualOverlapDrawable()V

    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public whitelist semSetThumbTintColor(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public blacklist setDefaultColorForVolumePanel(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "#ffe3e0e0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const-string v0, "#fff7cdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_1

    const v1, 0x10604ea

    goto :goto_0

    :cond_1
    const v1, 0x10604eb

    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    nop

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_2

    const v1, 0x10604e8

    goto :goto_1

    :cond_2
    const v1, 0x10604e9

    :goto_1
    nop

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_3

    const v1, 0x10604fe

    goto :goto_2

    :cond_3
    const v1, 0x10604ff

    :goto_2
    nop

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    nop

    const v1, 0x10604f0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v3, 0x10604ee

    const v4, 0x10604ed

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    nop

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    nop

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    :goto_5
    return-void
.end method

.method public blacklist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public blacklist setDualModeOverlapColor(II)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public whitelist setKeyProgressIncrement(I)V
    .locals 1

    if-gez p1, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized whitelist setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setMin(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setMuteAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    :cond_0
    return-void
.end method

.method public blacklist setOverlapBackgroundForDualColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    return-void
.end method

.method public whitelist setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist setProgressInternal(IZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    return v0
.end method

.method public whitelist setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public blacklist setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "rects must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateGestureExclusionRects()V

    return-void
.end method

.method public whitelist setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    :cond_4
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method public whitelist setThumbOffset(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public whitelist setThumbTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method public whitelist setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public whitelist setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public whitelist setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public whitelist setTickMarkTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public whitelist setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public whitelist setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setTickMarkTintBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public blacklist setTouchDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    return-void
.end method

.method protected blacklist updateDrawableBounds(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
