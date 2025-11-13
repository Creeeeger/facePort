.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$ThumbDrawable;,
        Landroid/widget/AbsSeekBar$SliderDrawable;
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
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 78
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 80
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 83
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 84
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 85
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 86
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 1422
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1432
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1443
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 1444
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 1445
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 1446
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1453
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1454
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 1455
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    .line 134
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 78
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 80
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 83
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 84
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 85
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 86
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 1422
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1432
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1443
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 1444
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 1445
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 1446
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1453
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1454
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 1455
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    .line 138
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 145
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 77
    const/4 v10, 0x0

    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 78
    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 79
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 80
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 83
    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 84
    iput-object v10, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 85
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 86
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 102
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput v12, v7, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 120
    const/4 v0, 0x0

    iput v0, v7, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 1422
    iput v11, v7, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1432
    const/4 v13, -0x1

    iput v13, v7, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1443
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 1444
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 1445
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 1446
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1453
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1454
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 1455
    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    .line 147
    sget-object v0, Lcom/android/internal/R$styleable;->SeekBar:[I

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v8, v9, v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 149
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBar:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v10, v6

    .end local v6    # "a":Landroid/content/res/TypedArray;
    .local v10, "a":Landroid/content/res/TypedArray;
    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsSeekBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 152
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 155
    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v10, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iget-object v2, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v1

    iput-object v1, v7, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 158
    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 161
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 163
    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 166
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 167
    .local v2, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v2}, Landroid/widget/AbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 169
    const/4 v3, 0x7

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {v10, v3, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 172
    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 175
    :cond_2
    const/4 v3, 0x6

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 177
    iput-boolean v12, v7, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 180
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v10, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v7, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 183
    nop

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v4

    .line 183
    invoke-virtual {v10, v12, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 185
    .local v4, "thumbOffset":I
    invoke-virtual {v7, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 187
    const/16 v5, 0x8

    invoke-virtual {v10, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 188
    .local v5, "useDisabledAlpha":Z
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    if-eqz v5, :cond_4

    .line 191
    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v8, v9, v6, v11, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 192
    .local v6, "ta":Landroid/content/res/TypedArray;
    const v13, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v1, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 193
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 195
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v7, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 198
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 199
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 201
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1050346

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/AbsSeekBar;->mThumbExclusionMaxSize:I

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    .local v1, "res":Landroid/content/res/Resources;
    const v6, 0x105047c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mTrackMinWidth:I

    .line 208
    const v6, 0x105047d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mTrackMaxWidth:I

    .line 209
    const v6, 0x105047b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/widget/AbsSeekBar;->mThumbRadius:I

    .line 211
    iget-boolean v6, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v6, :cond_5

    .line 212
    const v6, 0x1060973

    goto :goto_1

    .line 213
    :cond_5
    const v6, 0x1060974

    :goto_1
    nop

    .line 211
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 214
    const v6, 0x1060975

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->semGetProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 217
    if-nez v6, :cond_7

    .line 218
    iget-boolean v6, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v6, :cond_6

    .line 219
    const v6, 0x1060971

    goto :goto_2

    .line 220
    :cond_6
    const v6, 0x1060972

    :goto_2
    nop

    .line 218
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 222
    :cond_7
    iget-boolean v6, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v6, :cond_8

    .line 223
    const v6, 0x1060978

    goto :goto_3

    .line 224
    :cond_8
    const v6, 0x1060979

    :goto_3
    nop

    .line 222
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 225
    iget-boolean v6, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v17, 0x1060977

    if-eqz v6, :cond_9

    .line 226
    const v6, 0x1060976

    goto :goto_4

    .line 227
    :cond_9
    move/from16 v6, v17

    :goto_4
    nop

    .line 225
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v7, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 229
    new-array v6, v3, [[I

    new-array v13, v12, [I

    const v16, 0x101009e

    aput v16, v13, v11

    aput-object v13, v6, v11

    new-array v13, v12, [I

    const v16, -0x101009e

    aput v16, v13, v11

    aput-object v13, v6, v12

    .line 233
    .local v6, "states":[[I
    new-array v13, v3, [I

    .line 234
    iget-boolean v3, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v3, :cond_a

    .line 235
    const v3, 0x1060976

    goto :goto_5

    .line 236
    :cond_a
    move/from16 v3, v17

    .line 234
    :goto_5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v13, v11

    .line 237
    iget-boolean v3, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v17, 0x106097a

    const v18, 0x106097b

    if-eqz v3, :cond_b

    .line 238
    move/from16 v3, v17

    goto :goto_6

    .line 239
    :cond_b
    move/from16 v3, v18

    .line 237
    :goto_6
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v13, v12

    move-object v3, v13

    .line 241
    .local v3, "colors":[I
    new-instance v13, Landroid/content/res/ColorStateList;

    invoke-direct {v13, v6, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v13, v7, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 243
    iget-object v13, v7, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v13, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 244
    if-nez v13, :cond_e

    .line 245
    const/4 v13, 0x2

    new-array v13, v13, [I

    .line 246
    iget-boolean v12, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v12, :cond_c

    .line 247
    const v12, 0x1060989

    goto :goto_7

    .line 248
    :cond_c
    const v12, 0x106098a

    .line 246
    :goto_7
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    aput v12, v13, v11

    .line 249
    iget-boolean v11, v7, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v11, :cond_d

    .line 250
    move/from16 v11, v17

    goto :goto_8

    .line 251
    :cond_d
    move/from16 v11, v18

    .line 249
    :goto_8
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const/4 v12, 0x1

    aput v11, v13, v12

    move-object v3, v13

    .line 253
    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v6, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v11, v7, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 255
    :cond_e
    const v11, 0x111022b

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v7, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 257
    if-eqz v11, :cond_f

    .line 258
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    .line 261
    :cond_f
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/AbsSeekBar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .line 72
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/AbsSeekBar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .line 72
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    return v0
.end method

.method private greylist-max-o applyThumbTint()V
    .locals 2

    .line 434
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    if-eqz v1, :cond_3

    .line 435
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 441
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 447
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 451
    :cond_3
    return-void
.end method

.method private greylist-max-o applyTickMarkTint()V
    .locals 2

    .line 621
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    if-eqz v1, :cond_3

    .line 622
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 624
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 628
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 634
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 638
    :cond_3
    return-void
.end method

.method private greylist-max-o attemptClaimDrag()V
    .locals 2

    .line 1249
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1252
    :cond_0
    return-void
.end method

.method private blacklist cancelMuteAnimation()V
    .locals 1

    .line 2039
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2042
    :cond_0
    return-void
.end method

.method private blacklist checkInvalidatedDualColorMode()Z
    .locals 2

    .line 1968
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
    .locals 4
    .param p1, "color"    # I

    .line 1993
    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    .line 1994
    .local v1, "EMPTY":[[I
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private greylist-max-o getScale()F
    .locals 5

    .line 824
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v0

    .line 825
    .local v0, "min":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 826
    .local v1, "max":I
    sub-int v2, v1, v0

    .line 827
    .local v2, "range":I
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

    .line 1972
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1973
    new-instance v0, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTrackMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1975
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1976
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1977
    nop

    .line 1978
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1980
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initMuteAnimation()V
    .locals 11

    .line 2012
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 2014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2015
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v1, 0x8

    .line 2016
    .local v1, "total":I
    const/16 v2, 0x1f4

    div-int/2addr v2, v1

    .line 2017
    .local v2, "duration":I
    const/16 v3, 0x190

    .line 2018
    .local v3, "distance":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 2019
    rem-int/lit8 v5, v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    .line 2020
    .local v5, "isGoingDirection":Z
    :goto_1
    const/4 v8, 0x2

    if-eqz v5, :cond_1

    new-array v8, v8, [I

    aput v7, v8, v7

    aput v3, v8, v6

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    goto :goto_2

    .line 2021
    :cond_1
    new-array v8, v8, [I

    aput v3, v8, v7

    aput v7, v8, v6

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    :goto_2
    nop

    .line 2022
    .local v6, "progressZeroAnimation":Landroid/animation/ValueAnimator;
    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2023
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2024
    new-instance v7, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v7, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2030
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2031
    if-eqz v5, :cond_2

    .line 2032
    int-to-double v7, v3

    const-wide v9, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v7, v9

    double-to-int v3, v7

    .line 2018
    .end local v5    # "isGoingDirection":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2035
    .end local v4    # "i":I
    .end local v6    # "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :cond_3
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 2036
    return-void
.end method

.method private blacklist initializeExpandMode()V
    .locals 10

    .line 1814
    new-instance v0, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTrackMinWidth:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTrackMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 1816
    .local v0, "background":Landroid/widget/AbsSeekBar$SliderDrawable;
    new-instance v1, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTrackMinWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTrackMaxWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDefaultSecondaryProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 1818
    .local v1, "secondaryProgress":Landroid/widget/AbsSeekBar$SliderDrawable;
    new-instance v2, Landroid/widget/AbsSeekBar$SliderDrawable;

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTrackMinWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mTrackMaxWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V

    .line 1820
    .local v2, "primaryProgress":Landroid/widget/AbsSeekBar$SliderDrawable;
    new-instance v3, Landroid/widget/AbsSeekBar$ThumbDrawable;

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbRadius:I

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v4, v5, v6}, Landroid/widget/AbsSeekBar$ThumbDrawable;-><init>(Landroid/widget/AbsSeekBar;ILandroid/content/res/ColorStateList;Z)V

    .line 1822
    .local v3, "thumbDrawable":Landroid/widget/AbsSeekBar$ThumbDrawable;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 1823
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    aput-object v0, v4, v6

    .line 1824
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    const/16 v7, 0x13

    const/4 v8, 0x1

    invoke-direct {v5, v1, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v5, v4, v8

    .line 1826
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v5, v2, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 1829
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1830
    .local v5, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 1831
    const/high16 v9, 0x1020000

    invoke-virtual {v5, v6, v9}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1832
    const v6, 0x102000f

    invoke-virtual {v5, v8, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1833
    const v6, 0x102000d

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1835
    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1836
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1837
    const v6, 0x10809c4

    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->setBackgroundResource(I)V

    .line 1838
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMaxHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mTrackMaxWidth:I

    if-le v6, v7, :cond_0

    .line 1839
    invoke-virtual {p0, v7}, Landroid/widget/AbsSeekBar;->setMaxHeight(I)V

    .line 1841
    :cond_0
    return-void
.end method

.method private greylist-max-o setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1183
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1184
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1187
    :cond_0
    return-void
.end method

.method private blacklist setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 2131
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2132
    return-void
.end method

.method private blacklist setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 2116
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 2117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 2119
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 2120
    return-void
.end method

.method private greylist-max-o setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 17
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget v4, v0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v4

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 843
    return-void

    .line 846
    :cond_0
    iget v4, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v4, p1, v4

    iget v5, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    .line 847
    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 848
    .local v5, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 849
    .local v6, "thumbHeight":I
    sub-int/2addr v4, v5

    .line 852
    iget v7, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 854
    int-to-float v7, v4

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 857
    .local v7, "thumbPos":I
    const/high16 v8, -0x80000000

    if-ne v3, v8, :cond_1

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 859
    .local v8, "oldBounds":Landroid/graphics/Rect;
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 860
    .local v9, "top":I
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 861
    .local v8, "bottom":I
    goto :goto_0

    .line 862
    .end local v8    # "bottom":I
    .end local v9    # "top":I
    :cond_1
    move/from16 v9, p4

    .line 863
    .restart local v9    # "top":I
    add-int v8, v3, v6

    .line 867
    .restart local v8    # "bottom":I
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

    .line 869
    .local v10, "left":I
    :goto_1
    add-int v11, v10, v5

    .line 871
    .local v11, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 872
    .local v12, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_3

    .line 873
    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v14, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v13, v14

    .line 874
    .local v13, "offsetX":I
    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 875
    .local v14, "offsetY":I
    add-int v15, v10, v13

    add-int v2, v9, v14

    add-int v3, v11, v13

    move/from16 v16, v4

    .end local v4    # "available":I
    .local v16, "available":I
    add-int v4, v8, v14

    invoke-virtual {v12, v15, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_2

    .line 872
    .end local v13    # "offsetX":I
    .end local v14    # "offsetY":I
    .end local v16    # "available":I
    .restart local v4    # "available":I
    :cond_3
    move/from16 v16, v4

    .line 880
    .end local v4    # "available":I
    .restart local v16    # "available":I
    :goto_2
    invoke-virtual {v1, v10, v9, v11, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 883
    iget v2, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v2, v10

    iget v3, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    div-int/lit8 v4, v5, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 885
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    .line 887
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateGestureExclusionRects()V

    .line 888
    return-void
.end method

.method private blacklist setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 16
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .line 1537
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget v2, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v2, p1, v2

    iget v3, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v2, v3

    .line 1538
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1539
    .local v3, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1540
    .local v4, "thumbHeight":I
    sub-int/2addr v2, v4

    .line 1543
    iget v5, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 1545
    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 1548
    .local v5, "thumbPos":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1550
    .local v6, "oldBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 1551
    .local v7, "left":I
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 1552
    .local v6, "right":I
    goto :goto_0

    .line 1553
    .end local v6    # "right":I
    .end local v7    # "left":I
    :cond_0
    move/from16 v7, p4

    .line 1554
    .restart local v7    # "left":I
    add-int v6, v1, v3

    .line 1557
    .restart local v6    # "right":I
    :goto_0
    sub-int v8, v2, v5

    .line 1558
    .local v8, "top":I
    add-int v9, v8, v4

    .line 1560
    .local v9, "bottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1561
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_1

    .line 1562
    iget v11, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .line 1563
    .local v11, "offsetX":I
    iget v12, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v12, v13

    .line 1565
    .local v12, "offsetY":I
    add-int v13, v7, v11

    add-int v14, v8, v12

    add-int v15, v6, v11

    add-int v1, v9, v12

    invoke-virtual {v10, v13, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1570
    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    :cond_1
    move-object/from16 v1, p2

    invoke-virtual {v1, v7, v8, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1573
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v8

    iget v12, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v11, v12

    iput v11, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 1574
    return-void
.end method

.method private greylist-max-o startDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1172
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1177
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1178
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1179
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    .line 1180
    return-void
.end method

.method private blacklist startMuteAnimation()V
    .locals 1

    .line 2045
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 2047
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2050
    :cond_0
    return-void
.end method

.method private blacklist trackHoverEvent(I)V
    .locals 6
    .param p1, "posX"    # I

    .line 1666
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    .line 1667
    .local v0, "width":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 1669
    .local v1, "available":I
    const/4 v2, 0x0

    .line 1671
    .local v2, "hoverLevel":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v3, :cond_0

    .line 1672
    const/4 v3, 0x0

    .local v3, "scale":F
    goto :goto_0

    .line 1673
    .end local v3    # "scale":F
    :cond_0
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v3, v0, v3

    if-le p1, v3, :cond_1

    .line 1674
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 1676
    .end local v3    # "scale":F
    :cond_1
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1677
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 1680
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 1681
    .local v4, "max":I
    int-to-float v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    .line 1682
    float-to-int v5, v2

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1683
    return-void
.end method

.method private greylist trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1192
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1193
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    .line 1194
    return-void

    .line 1197
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1198
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1199
    .local v1, "y":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 1200
    .local v2, "width":I
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v3, v2, v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 1205
    .local v3, "availableWidth":I
    const/4 v4, 0x0

    .line 1206
    .local v4, "progress":F
    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1207
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v2, v5

    if-le v0, v5, :cond_1

    .line 1208
    const/4 v5, 0x0

    .local v5, "scale":F
    goto :goto_0

    .line 1209
    .end local v5    # "scale":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v0, v5, :cond_2

    .line 1210
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_0

    .line 1212
    .end local v5    # "scale":F
    :cond_2
    sub-int v5, v3, v0

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    add-float/2addr v5, v6

    .line 1214
    .restart local v5    # "scale":F
    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 1217
    .end local v5    # "scale":F
    :cond_3
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v0, v5, :cond_4

    .line 1218
    const/4 v5, 0x0

    .restart local v5    # "scale":F
    goto :goto_0

    .line 1219
    .end local v5    # "scale":F
    :cond_4
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v2, v5

    if-le v0, v5, :cond_5

    .line 1220
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_0

    .line 1222
    .end local v5    # "scale":F
    :cond_5
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    add-float/2addr v5, v6

    .line 1223
    .restart local v5    # "scale":F
    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 1227
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1229
    .local v6, "range":I
    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    .line 1231
    .local v7, "basicWidth":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    cmpg-float v8, v5, v8

    if-gez v8, :cond_6

    .line 1232
    rem-float v8, v5, v7

    .line 1233
    .local v8, "remainder":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_6

    .line 1234
    sub-float v9, v7, v8

    add-float/2addr v5, v9

    .line 1238
    .end local v8    # "remainder":F
    :cond_6
    int-to-float v8, v6

    mul-float/2addr v8, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v4, v8

    .line 1240
    int-to-float v8, v0

    int-to-float v9, v1

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1241
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1242
    return-void
.end method

.method private blacklist trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1602
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v0

    .line 1603
    .local v0, "height":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v1, v0, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 1604
    .local v1, "availableHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1605
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v3, v0, v3

    .line 1607
    .local v3, "y":I
    const/4 v4, 0x0

    .line 1608
    .local v4, "progress":F
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v3, v5, :cond_0

    .line 1609
    const/4 v5, 0x0

    .local v5, "scale":F
    goto :goto_0

    .line 1610
    .end local v5    # "scale":F
    :cond_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v5, v0, v5

    if-le v3, v5, :cond_1

    .line 1611
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_0

    .line 1613
    .end local v5    # "scale":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 1614
    .restart local v5    # "scale":F
    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 1616
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1617
    .local v6, "range":I
    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    .line 1618
    .local v7, "basicWidth":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_2

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    .line 1619
    rem-float v8, v5, v7

    .line 1620
    .local v8, "remainder":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_2

    .line 1621
    sub-float v9, v7, v8

    add-float/2addr v5, v9

    .line 1624
    .end local v8    # "remainder":F
    :cond_2
    int-to-float v8, v6

    mul-float/2addr v8, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    add-float/2addr v4, v8

    .line 1626
    int-to-float v8, v2

    int-to-float v9, v3

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1627
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1628
    return-void
.end method

.method private blacklist updateBoundsForDualColor()V
    .locals 2

    .line 1931
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1934
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1935
    .local v0, "base":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1936
    return-void

    .line 1932
    .end local v0    # "base":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateDualColorMode()V
    .locals 2

    .line 1908
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    return-void

    .line 1912
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1913
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_2

    .line 1914
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_1

    .line 1915
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1916
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1917
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1920
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1921
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1922
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1927
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1928
    return-void
.end method

.method private blacklist updateGestureExclusionRects()V
    .locals 4

    .line 898
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 899
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 900
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 901
    return-void

    .line 903
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 904
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 905
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 906
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbExclusionMaxSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->growRectTo(Landroid/graphics/Rect;I)V

    .line 907
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 909
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 910
    return-void
.end method

.method private blacklist updateSplitProgress()V
    .locals 12

    .line 1577
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 1579
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1580
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1581
    .local v1, "base":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    .line 1582
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1583
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1585
    :cond_1
    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1589
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 1590
    .local v2, "w":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    .line 1592
    .local v3, "h":I
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1593
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

    .line 1599
    :cond_3
    return-void
.end method

.method private greylist-max-o updateThumbAndTrackPos(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 783
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 784
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    .line 785
    return-void

    .line 788
    :cond_0
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 789
    .local v0, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 790
    .local v1, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 794
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 795
    .local v3, "trackHeight":I
    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 800
    .local v5, "thumbHeight":I
    :goto_0
    if-le v5, v3, :cond_2

    .line 801
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 802
    .local v6, "offsetHeight":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 803
    .local v7, "trackOffset":I
    nop

    .line 804
    .local v6, "thumbOffset":I
    goto :goto_1

    .line 805
    .end local v6    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_2
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 806
    .local v6, "offsetHeight":I
    move v7, v6

    .line 807
    .restart local v7    # "trackOffset":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    .line 810
    .local v6, "thumbOffset":I
    :goto_1
    if-eqz v1, :cond_3

    .line 811
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    .line 812
    .local v8, "trackWidth":I
    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 815
    .end local v8    # "trackWidth":I
    :cond_3
    if-eqz v2, :cond_4

    .line 816
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p1, v2, v4, v6}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 819
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    .line 821
    return-void
.end method

.method private blacklist updateThumbAndTrackPosInVertical(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1504
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 1505
    .local v0, "paddedWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1506
    .local v1, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1510
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1511
    .local v3, "trackWidth":I
    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1516
    .local v5, "thumbWidth":I
    :goto_0
    if-le v5, v3, :cond_1

    .line 1517
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 1518
    .local v6, "offsetWidth":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 1519
    .local v7, "trackOffset":I
    nop

    .line 1520
    .local v6, "thumbOffset":I
    goto :goto_1

    .line 1521
    .end local v6    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_1
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 1522
    .local v6, "offsetWidth":I
    move v7, v6

    .line 1523
    .restart local v7    # "trackOffset":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    .line 1526
    .local v6, "thumbOffset":I
    :goto_1
    if-eqz v1, :cond_2

    .line 1527
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    .line 1528
    .local v8, "trackHeight":I
    sub-int v9, v0, v7

    invoke-virtual {v1, v7, v4, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1531
    .end local v8    # "trackHeight":I
    :cond_2
    if-eqz v2, :cond_3

    .line 1532
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p2, v2, v4, v6}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1534
    :cond_3
    return-void
.end method

.method private blacklist updateWarningMode(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 1998
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1999
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2001
    .local v0, "isMax":Z
    if-eqz v0, :cond_1

    .line 2002
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 2003
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 2005
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2006
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2009
    .end local v0    # "isMax":Z
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method greylist-max-o canUserSetProgress()Z
    .locals 1

    .line 1395
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1043
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1044
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1048
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1049
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 1051
    :cond_0
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1053
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1054
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1056
    .end local v0    # "saveCount":I
    :cond_1
    return-void
.end method

.method protected greylist-max-o drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1017
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1018
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1019
    .local v0, "count":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1020
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1021
    .local v2, "w":I
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1022
    .local v3, "h":I
    if-ltz v2, :cond_0

    div-int/lit8 v4, v2, 0x2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 1023
    .local v4, "halfW":I
    :goto_0
    if-ltz v3, :cond_1

    div-int/lit8 v1, v3, 0x2

    .line 1024
    .local v1, "halfH":I
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v6, v4

    neg-int v7, v1

    invoke-virtual {v5, v6, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1026
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 1027
    .local v5, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1028
    .local v6, "saveCount":I
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1029
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-gt v7, v0, :cond_2

    .line 1030
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1031
    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1029
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1033
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1036
    .end local v0    # "count":I
    .end local v1    # "halfH":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v4    # "halfW":I
    .end local v5    # "spacing":F
    .end local v6    # "saveCount":I
    :cond_3
    return-void
.end method

.method greylist-max-o drawTrack(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 963
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 964
    .local v0, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_0

    .line 965
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 966
    .local v1, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 967
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 968
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 969
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 970
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 972
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 973
    .local v3, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 974
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 975
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 976
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 977
    .end local v1    # "insets":Landroid/graphics/Insets;
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    .end local v3    # "saveCount":I
    goto :goto_0

    .line 978
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 979
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 982
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 983
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 984
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 985
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 986
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 988
    :cond_1
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 991
    :goto_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 992
    .local v1, "base":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 993
    .restart local v2    # "tempRect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 994
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 995
    .local v3, "curProgress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 996
    .local v4, "maxProgress":I
    iget v5, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 997
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 998
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

    .line 1000
    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 1001
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

    .line 1003
    :goto_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1004
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 1005
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 1006
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1008
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1011
    .end local v1    # "base":Landroid/graphics/Rect;
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    .end local v3    # "curProgress":I
    .end local v4    # "maxProgress":I
    :cond_4
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 750
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 752
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 755
    :cond_0
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 4

    .line 707
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 709
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 711
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

    .line 712
    .local v1, "alpha":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 714
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 715
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 720
    .end local v1    # "alpha":I
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v1, :cond_3

    .line 721
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 722
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 724
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 725
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 729
    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 730
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 731
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 735
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 736
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 737
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 738
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    :cond_5
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 742
    .local v2, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 743
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 744
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    :cond_6
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1326
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyProgressIncrement()I
    .locals 1

    .line 659
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public whitelist getSplitTrack()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public whitelist getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 330
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getThumbHeight()I
    .locals 1

    .line 1770
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getThumbOffset()I
    .locals 1

    .line 457
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public whitelist getThumbTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 430
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 367
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_0

    .line 417
    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0
.end method

.method public whitelist getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 519
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getTickMarkTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 617
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 553
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 602
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_0

    .line 603
    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 602
    :goto_0
    return-object v0
.end method

.method public blacklist growRectTo(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "minimumSize"    # I

    .line 922
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p2, v0

    .line 923
    .local v0, "dy":I
    if-lez v0, :cond_0

    .line 924
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 925
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 927
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    .line 928
    .local v1, "dx":I
    if-lez v1, :cond_1

    .line 929
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 930
    iget v2, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 932
    :cond_1
    return-void
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    .line 694
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 696
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 700
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 703
    :cond_1
    return-void
.end method

.method protected declared-synchronized whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 948
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 950
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 952
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 955
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_1

    .line 956
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    :cond_1
    monitor-exit p0

    return-void

    .line 947
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist onHoverChanged(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 1663
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1711
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 1712
    .local v1, "toolType":I
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    move v0, v3

    .line 1717
    .local v0, "isPossibleToolType":Z
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1719
    .local v4, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 1720
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 1721
    .local v6, "y":I
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1736
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    .line 1737
    goto :goto_0

    .line 1724
    :pswitch_2
    invoke-direct {p0, v5}, Landroid/widget/AbsSeekBar;->trackHoverEvent(I)V

    .line 1725
    iget v2, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v2, v5, v6}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 1726
    goto :goto_0

    .line 1728
    :pswitch_3
    invoke-direct {p0, v5}, Landroid/widget/AbsSeekBar;->trackHoverEvent(I)V

    .line 1729
    iget v7, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v7, v5, v6}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 1731
    iget v7, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    if-ne v7, v2, :cond_2

    .line 1732
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    .line 1742
    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
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
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1332
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1334
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 1336
    .local v0, "progress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1337
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1339
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1340
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1343
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method greylist-max-o onKeyChange()V
    .locals 0

    .line 1273
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1277
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1278
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 1280
    .local v0, "increment":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 1281
    sparse-switch p1, :sswitch_data_0

    .line 1294
    goto :goto_2

    .line 1284
    :sswitch_0
    neg-int v0, v0

    .line 1289
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

    .line 1292
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1293
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1294
    return v3

    .line 1300
    :cond_1
    sparse-switch p1, :sswitch_data_1

    goto :goto_2

    .line 1303
    :sswitch_2
    neg-int v0, v0

    .line 1308
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

    .line 1311
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1312
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1313
    return v3

    .line 1321
    .end local v0    # "increment":I
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
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 1060
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1062
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1063
    .local v1, "dw":I
    const/4 v2, 0x0

    .line 1064
    .local v2, "dh":I
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1066
    iget v4, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1067
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1068
    .local v4, "thumbWidth":I
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

    .line 1069
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    .line 1070
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    .line 1071
    .end local v4    # "thumbWidth":I
    goto :goto_2

    .line 1072
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1073
    .local v4, "thumbHeight":I
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

    .line 1074
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    .line 1075
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    .line 1078
    .end local v4    # "thumbHeight":I
    :cond_3
    :goto_2
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 1079
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 1081
    invoke-static {v1, p1, v3}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    .line 1082
    invoke-static {v2, p2, v3}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v3

    .line 1081
    invoke-virtual {p0, v4, v3}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    monitor-exit p0

    return-void

    .line 1059
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dw":I
    .end local v2    # "dh":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist onProgressRefresh(FZI)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .line 1476
    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1478
    .local v0, "targetLevel":I
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

    .line 1481
    .local v1, "isMuteAnimationNeeded":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v3, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 1482
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->startMuteAnimation()V

    goto :goto_1

    .line 1484
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 1486
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 1487
    iput v0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    .line 1489
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    .line 1491
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1492
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 1493
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1498
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1501
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 939
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 941
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 944
    :cond_0
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .line 1400
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 1402
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1403
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1409
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1411
    :cond_0
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 776
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 778
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 779
    return-void
.end method

.method protected blacklist onSlidingRefresh(I)V
    .locals 4
    .param p1, "level"    # I

    .line 2067
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    .line 2069
    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 2070
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 2071
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2072
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 2077
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 2079
    :cond_0
    return-void
.end method

.method blacklist onStartTrackingHover(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 1647
    return-void
.end method

.method greylist-max-o onStartTrackingTouch()V
    .locals 1

    .line 1258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1259
    return-void
.end method

.method blacklist onStopTrackingHover()V
    .locals 0

    .line 1655
    return-void
.end method

.method greylist-max-o onStopTrackingTouch()V
    .locals 1

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1267
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1087
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1091
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1157
    :pswitch_0
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1159
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 1160
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1161
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1163
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_2

    .line 1116
    :pswitch_1
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1118
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 1119
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1121
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1123
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1124
    .local v1, "y":F
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

    .line 1125
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 1127
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 1130
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_5
    goto/16 :goto_2

    .line 1134
    :pswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v0, :cond_6

    .line 1135
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1138
    :cond_6
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_7

    .line 1139
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1140
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1141
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 1145
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1146
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1147
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1152
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1153
    goto :goto_2

    .line 1093
    :pswitch_3
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 1094
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v3

    .line 1095
    .local v0, "availableWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    .line 1096
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

    .line 1097
    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 1098
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 1102
    .end local v0    # "availableWidth":I
    :cond_8
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1104
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 1110
    :cond_9
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 1112
    goto :goto_2

    .line 1105
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 1107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    .line 1166
    :goto_2
    return v2

    .line 1088
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
    .param p1, "id"    # I
    .param p2, "scale"    # F

    .line 759
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    .line 761
    const v0, 0x102000d

    if-ne p1, v0, :cond_0

    .line 762
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 763
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 769
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 772
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1348
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1349
    return v1

    .line 1352
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1353
    return v2

    .line 1356
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1388
    return v2

    .line 1358
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1359
    return v2

    .line 1361
    :cond_2
    if-eqz p2, :cond_4

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1365
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1367
    .local v0, "value":F
    float-to-int v2, v0

    invoke-virtual {p0, v2, v1, v1}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    return v1

    .line 1363
    .end local v0    # "value":F
    :cond_4
    :goto_0
    return v2

    .line 1371
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1372
    return v2

    .line 1374
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1375
    .local v0, "range":I
    int-to-float v3, v0

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1376
    .local v3, "increment":I
    const/16 v4, 0x2000

    if-ne p1, v4, :cond_6

    .line 1377
    neg-int v3, v3

    .line 1381
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v1, v1}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1382
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1383
    return v1

    .line 1385
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

    .line 1761
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

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
    .param p1, "type"    # I

    .line 1690
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1691
    return-void

    .line 1694
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1695
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 1698
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v1

    .line 1699
    .local v1, "contentHeight":I
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    const/4 v3, 0x0

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    .line 1700
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    .line 1703
    .end local v1    # "contentHeight":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetHoverPopupType(I)V

    .line 1704
    return-void
.end method

.method public whitelist semSetMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1782
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    if-ne v0, p1, :cond_0

    .line 1783
    return-void

    .line 1785
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->semSetMode(I)V

    .line 1786
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1806
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initializeExpandMode()V

    goto :goto_0

    .line 1797
    :pswitch_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080bee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1799
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080bef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1800
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    .line 1801
    goto :goto_0

    .line 1792
    :pswitch_3
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v1, 0x1080be3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1794
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1795
    goto :goto_0

    .line 1803
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    .line 1804
    goto :goto_0

    .line 1788
    :pswitch_5
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1789
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1790
    nop

    .line 1809
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->drawableStateChanged()V

    .line 1810
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1811
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
    .param p1, "value"    # I

    .line 1889
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1890
    return-void

    .line 1892
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSetDualColorMode:Z

    .line 1893
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1895
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1896
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1897
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1899
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 1900
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initDualOverlapDrawable()V

    .line 1902
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1904
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1905
    return-void
.end method

.method public whitelist semSetThumbTintColor(I)V
    .locals 2
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1468
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1469
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1470
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 1472
    :cond_0
    return-void
.end method

.method public blacklist setDefaultColorForVolumePanel(Z)V
    .locals 5
    .param p1, "isClearCoverOpened"    # Z

    .line 2085
    if-eqz p1, :cond_0

    .line 2086
    const-string v0, "#ffe3e0e0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 2087
    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2088
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 2089
    const-string v0, "#fff7cdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 2090
    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2091
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_5

    .line 2093
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2094
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_1

    .line 2095
    const v1, 0x1060973

    goto :goto_0

    .line 2096
    :cond_1
    const v1, 0x1060974

    .line 2094
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 2097
    nop

    .line 2098
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_2

    .line 2099
    const v1, 0x1060971

    goto :goto_1

    .line 2100
    :cond_2
    const v1, 0x1060972

    :goto_1
    nop

    .line 2098
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 2097
    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2101
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_3

    .line 2102
    const v1, 0x1060989

    goto :goto_2

    .line 2103
    :cond_3
    const v1, 0x106098a

    :goto_2
    nop

    .line 2101
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 2104
    const v1, 0x1060979

    .line 2105
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 2104
    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 2106
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    const v3, 0x1060977

    const v4, 0x1060976

    if-eqz v1, :cond_4

    .line 2107
    move v1, v3

    goto :goto_3

    .line 2108
    :cond_4
    move v1, v4

    :goto_3
    nop

    .line 2106
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2109
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDeviceDefaultDark:Z

    if-eqz v1, :cond_5

    .line 2110
    goto :goto_4

    .line 2111
    :cond_5
    move v3, v4

    :goto_4
    nop

    .line 2109
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 2113
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_5
    return-void
.end method

.method public blacklist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1855
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 1856
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1857
    return-void
.end method

.method public blacklist setDualModeOverlapColor(II)V
    .locals 3
    .param p1, "bgColor"    # I
    .param p2, "fgColor"    # I

    .line 1947
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1948
    .local v0, "mOverlapBackgroundColor":Landroid/content/res/ColorStateList;
    invoke-direct {p0, p2}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1951
    .local v1, "mOverlapForegroundColor":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1952
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 1956
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1957
    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 1960
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1961
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1962
    return-void
.end method

.method public whitelist setKeyProgressIncrement(I)V
    .locals 1
    .param p1, "increment"    # I

    .line 647
    if-gez p1, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 648
    return-void
.end method

.method public declared-synchronized whitelist setMax(I)V
    .locals 4
    .param p1, "max"    # I

    monitor-enter p0

    .line 677
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 678
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 680
    .local v0, "range":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 683
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_0
    const/4 v1, 0x1

    int-to-float v2, v0

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :cond_1
    monitor-exit p0

    return-void

    .line 676
    .end local v0    # "range":I
    .end local p1    # "max":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setMin(I)V
    .locals 4
    .param p1, "min"    # I

    monitor-enter p0

    .line 664
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 665
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 667
    .local v0, "range":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 671
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_0
    const/4 v1, 0x1

    int-to-float v2, v0

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :cond_1
    monitor-exit p0

    return-void

    .line 663
    .end local v0    # "range":I
    .end local p1    # "min":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setMuteAnimation(Z)V
    .locals 1
    .param p1, "use"    # Z

    .line 2059
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz v0, :cond_0

    .line 2060
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 2062
    :cond_0
    return-void
.end method

.method public blacklist setOverlapBackgroundForDualColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1867
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1870
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1871
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 1875
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 1877
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1878
    return-void
.end method

.method public whitelist setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1749
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1750
    return-void
.end method

.method public blacklist setProgressInternal(IZZ)Z
    .locals 1
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .line 1635
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->setProgressInternal(IZZ)Z

    move-result v0

    .line 1636
    .local v0, "superRet":Z
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    .line 1637
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1638
    return v0
.end method

.method public whitelist setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 2125
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2127
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 2128
    return-void
.end method

.method public blacklist setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1847
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 1848
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1849
    return-void
.end method

.method public whitelist setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .line 479
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 480
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 481
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

    .line 892
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const-string/jumbo v0, "rects must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 894
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateGestureExclusionRects()V

    .line 895
    return-void
.end method

.method public whitelist setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 278
    const/4 v0, 0x1

    .local v0, "needUpdate":Z
    goto :goto_0

    .line 280
    .end local v0    # "needUpdate":Z
    :cond_0
    const/4 v0, 0x0

    .line 283
    .restart local v0    # "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 284
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 285
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 293
    :cond_1
    iget v1, p0, Landroid/widget/AbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 294
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 300
    :goto_1
    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 302
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 303
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 307
    :cond_4
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 309
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 310
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 312
    if-eqz v0, :cond_5

    .line 313
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 314
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 318
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 321
    .end local v1    # "state":[I
    :cond_5
    return-void
.end method

.method public whitelist setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .line 467
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 468
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 469
    return-void
.end method

.method public whitelist setThumbTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 400
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 402
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 403
    return-void
.end method

.method public whitelist setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 348
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 351
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 353
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 355
    return-void
.end method

.method public whitelist setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 383
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_0
    const/4 v0, 0x0

    .line 383
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 385
    return-void
.end method

.method public whitelist setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;

    .line 497
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 498
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 501
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 503
    if-eqz p1, :cond_2

    .line 504
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 505
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 506
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 509
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 512
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 513
    return-void
.end method

.method public whitelist setTickMarkTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 585
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 588
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 589
    return-void
.end method

.method public whitelist setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 537
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 540
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 541
    return-void
.end method

.method public whitelist setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 569
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setTickMarkTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 570
    return-void
.end method

.method public blacklist setTouchDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .line 2141
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsTouchDisabled:Z

    .line 2142
    return-void
.end method

.method protected blacklist updateDrawableBounds(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1986
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1988
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1989
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1990
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 689
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
