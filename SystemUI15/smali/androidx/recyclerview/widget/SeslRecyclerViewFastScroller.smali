.class public final Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BOTTOM:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

.field public static final LEFT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final RIGHT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;

.field public static final TOP:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;


# instance fields
.field public final mAdditionalTouchArea:F

.field public final mColorPrimary:I

.field public final mContainerRect:Landroid/graphics/Rect;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSection:I

.field public mDecorAnimation:Landroid/animation/AnimatorSet;

.field public final mDeferHide:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticLambda0;

.field public mEnabled:Z

.field public final mFastVibrateIndex:I

.field public mImmersiveBottomPadding:I

.field public mLayoutFromRight:Z

.field public mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mListScrollExtent:I

.field public mListScrollRange:I

.field public mLongList:Z

.field public final mMatchDragPosition:Z

.field public final mNormalVibrateIndex:I

.field public mOldChildCount:I

.field public mOldItemCount:I

.field public mOldThumbPosition:F

.field public final mOverlayPosition:I

.field public mPendingDrag:J

.field public mPreviewAnimation:Landroid/animation/AnimatorSet;

.field public final mPreviewImage:Landroid/view/View;

.field public final mPreviewMarginEnd:I

.field public final mPreviewResId:[I

.field public final mPrimaryText:Landroid/widget/TextView;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mScaledTouchSlop:I

.field public mScrollBarStyle:I

.field public mScrollCompleted:Z

.field public mScrollY:F

.field public mScrollbarPosition:I

.field public final mSecondaryText:Landroid/widget/TextView;

.field public mSectionIndexer:Landroid/widget/SectionIndexer;

.field public mSections:[Ljava/lang/Object;

.field public mShowingPreview:Z

.field public mShowingPrimary:Z

.field public mState:I

.field public final mSwitchPrimaryListener:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

.field public final mTempBounds:Landroid/graphics/Rect;

.field public final mTempMargins:Landroid/graphics/Rect;

.field public final mThumbImage:Landroid/widget/ImageView;

.field public mThumbOffset:F

.field public final mThumbPosition:I

.field public mThumbRange:F

.field public mThumbTouchYOffset:F

.field public final mThumbWidthAnimator:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;

.field public final mTrackImage:Landroid/widget/ImageView;

.field public final mTrackVerticalPadding:I

.field public mUpdatingLayout:Z

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LEFT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->TOP:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;

    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;

    new-instance v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    const/4 v4, 0x0

    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbTouchYOffset:F

    const/4 v5, -0x1

    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    new-instance v6, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;)V

    iput-object v6, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticLambda0;

    new-instance v6, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;-><init>(Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;)V

    iput-object v6, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollRange:I

    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollExtent:I

    iput-object v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    :goto_0
    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    iput v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v7

    iput v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    iput v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    iput-boolean v8, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v12

    iput-object v12, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v13

    iput-object v13, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    sget-object v15, Landroidx/recyclerview/R$styleable;->FastScroll:[I

    const/4 v4, 0x0

    const v9, 0x7f1408c1

    invoke-virtual {v14, v4, v15, v6, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v14, 0x8

    :try_start_0
    invoke-virtual {v9, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    const/4 v14, 0x6

    invoke-virtual {v9, v14, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v3, v6

    const/4 v14, 0x7

    invoke-virtual {v9, v14, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v3, v7

    const/16 v3, 0x9

    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v14, 0xe

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v9, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v9, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    const/4 v7, 0x4

    invoke-virtual {v9, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const/4 v1, 0x5

    invoke-virtual {v9, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move/from16 v17, v2

    const/16 v2, 0xc

    invoke-virtual {v9, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move-object/from16 v18, v4

    const/16 v4, 0xb

    invoke-virtual {v9, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v16, v13

    const/4 v13, 0x3

    invoke-virtual {v9, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move/from16 v19, v13

    const/16 v13, 0xd

    invoke-virtual {v9, v13, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    instance-of v9, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v9, :cond_2

    new-instance v9, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;

    move-object v13, v3

    check-cast v13, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v9, v5, v13}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;-><init>(Landroid/content/Context;Landroid/graphics/drawable/LayerDrawable;)V

    iput-object v9, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbWidthAnimator:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    iput-object v9, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbWidthAnimator:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;

    :goto_2
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v6, 0x7f040159

    move-object/from16 v20, v12

    const/4 v12, 0x1

    invoke-virtual {v13, v6, v9, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/16 v9, 0xe5

    invoke-static {v6, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    iput v6, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    const/4 v9, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_4
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mWidth:I

    invoke-virtual {v10, v7}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setMinimumHeight(I)V

    if-eqz v15, :cond_5

    move-object/from16 v2, v20

    invoke-virtual {v2, v5, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v3, v16

    invoke-virtual {v3, v5, v15}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    move-object/from16 v2, v20

    :goto_4
    if-eqz v18, :cond_6

    move-object/from16 v4, v18

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-lez v4, :cond_7

    move/from16 v6, v17

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMinimumWidth(I)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    move v7, v12

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v1, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v1, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f071242

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    const v4, 0x7f071241

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    const v4, 0x7f071249

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackVerticalPadding:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    move/from16 v4, v19

    invoke-virtual {v2, v4, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v4, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    iget v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLongList(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    const/16 v1, 0x1a

    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mNormalVibrateIndex:I

    const/16 v1, 0x18

    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mFastVibrateIndex:I

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    aget-object v4, p2, v1

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method public final beginDrag()V
    .locals 10

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method public final canScrollList(I)Z
    .locals 5

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-lez p1, :cond_4

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v2, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :goto_0
    if-lt v2, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    if-le p1, p0, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    if-gtz v2, :cond_5

    iget p1, v3, Landroid/graphics/Rect;->top:I

    if-ge p0, p1, :cond_6

    :cond_5
    move v1, v4

    :cond_6
    return v1
.end method

.method public final createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0x11

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method public final getPosFromItemCount(III)F
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_16

    if-nez p3, :cond_2

    goto/16 :goto_a

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-lez v3, :cond_4

    instance-of v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    :goto_0
    if-lez p1, :cond_4

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move p1, v6

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    sub-int v6, p1, v6

    if-gez v6, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v7, v3, v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v3

    int-to-float v3, v8

    div-float/2addr v7, v3

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v3, v7

    goto :goto_3

    :cond_8
    :goto_2
    move v7, v0

    :goto_3
    const/4 v3, 0x1

    if-eqz v1, :cond_e

    iget-object v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v8, :cond_e

    array-length v8, v8

    if-lez v8, :cond_e

    iget-boolean v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    if-nez v8, :cond_9

    goto :goto_7

    :cond_9
    if-gez p1, :cond_a

    return v0

    :cond_a
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    array-length p0, p0

    add-int/lit8 v8, p0, -0x1

    if-ge v4, v8, :cond_c

    add-int/lit8 v8, v4, 0x1

    if-ge v8, p0, :cond_b

    invoke-interface {v1, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_4

    :cond_b
    add-int/lit8 v1, p3, -0x1

    :goto_4
    sub-int/2addr v1, v6

    goto :goto_5

    :cond_c
    sub-int v1, p3, v6

    :goto_5
    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    int-to-float v0, p1

    add-float/2addr v0, v7

    int-to-float v6, v6

    sub-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_6
    int-to-float v1, v4

    add-float/2addr v1, v0

    int-to-float p0, p0

    div-float v0, v1, p0

    goto :goto_9

    :cond_e
    :goto_7
    if-ne p2, p3, :cond_10

    if-eqz p1, :cond_f

    instance-of p0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_10

    :cond_f
    instance-of p0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_9

    :cond_10
    instance-of p0, v4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p0, :cond_11

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager;

    iget p0, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    iget-object v0, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    div-int/2addr p0, v0

    goto :goto_8

    :cond_11
    instance-of p0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_12

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget p0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    goto :goto_8

    :cond_12
    move p0, v3

    :goto_8
    int-to-float v0, p1

    int-to-float p0, p0

    mul-float/2addr v7, p0

    add-float/2addr v7, v0

    int-to-float p0, p3

    div-float v0, v7, p0

    :cond_13
    :goto_9
    add-int p0, p1, p2

    if-ne p0, p3, :cond_16

    sub-int/2addr p2, v3

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p2, v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    if-gt p2, p3, :cond_14

    if-lez p1, :cond_15

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    :cond_15
    sub-int p0, p2, v1

    if-lez p0, :cond_16

    if-lez p2, :cond_16

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    :cond_16
    :goto_a
    return v0
.end method

.method public final getPosFromMotionEvent(F)F
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float/2addr p1, v2

    iget p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbTouchYOffset:F

    add-float/2addr p1, p0

    div-float/2addr p1, v0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, p0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public final getSectionsFromIndexer()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final isEnabled()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method

.method public final isPointInside(FF)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_1

    cmpg-float p1, p2, v1

    if-gtz p1, :cond_1

    iget p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final measurePreview(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v1, v5, v1

    sub-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v4

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p0

    add-int/2addr v1, v5

    invoke-virtual {p1, v5, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    :goto_0
    move v1, v3

    move v4, v1

    goto :goto_1

    :cond_1
    move v1, v4

    move v4, v3

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_1
    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v6, v7

    :goto_2
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v6, v4

    sub-int/2addr v6, v1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p2, v2, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-boolean p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz p0, :cond_7

    if-nez v0, :cond_6

    iget p0, v5, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    :goto_3
    sub-int/2addr p0, v1

    sub-int v0, p0, v2

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    iget p0, v5, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p0

    :goto_4
    add-int v0, p0, v4

    add-int p0, v0, v2

    :goto_5
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, v0, v3, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_6
    return-void
.end method

.method public final onScroll(III)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    :goto_0
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    :cond_3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    return-void
.end method

.method public final onStateDependencyChanged()V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_c

    const/16 v7, 0x3e8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eq v4, v6, :cond_a

    if-eq v4, v11, :cond_4

    const/4 p1, 0x3

    if-eq v4, p1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v11, :cond_3

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    :cond_3
    iput v10, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto/16 :goto_2

    :cond_4
    iget-wide v12, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    cmp-long v4, v12, v8

    if-ltz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v4, v4, v8

    if-lez v4, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v8, v1

    cmpl-float v9, v4, v8

    if-lez v9, :cond_6

    int-to-float v9, v0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_6

    add-float/2addr v8, v3

    cmpg-float v9, v4, v8

    if-gez v9, :cond_5

    iput v8, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_0

    :cond_5
    cmpl-float v4, v4, v2

    if-lez v4, :cond_6

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    :cond_6
    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v4, v11, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    iget-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(FF)V

    :cond_7
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v1, v1

    cmpl-float v4, p1, v1

    if-lez v4, :cond_9

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    add-float/2addr v1, v3

    cmpg-float v0, p1, v1

    if-gez v0, :cond_8

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_1

    :cond_8
    cmpl-float p1, p1, v2

    if-lez p1, :cond_9

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    :cond_9
    :goto_1
    return v6

    :cond_a
    iget-wide v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->scrollTo(FF)V

    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v11, :cond_d

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setState(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    iput v10, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    iput v10, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbTouchYOffset:F

    return v6

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbTouchYOffset:F

    return v6

    :cond_d
    :goto_2
    return v5
.end method

.method public final postAutoHide()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final scrollTo(FF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    :goto_0
    iget-object v5, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v5, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    array-length v6, v5

    :goto_1
    const/4 v7, 0x1

    if-eqz v5, :cond_a

    if-lez v6, :cond_a

    int-to-float v5, v6

    mul-float v8, v1, v5

    float-to-int v8, v8

    add-int/lit8 v9, v6, -0x1

    invoke-static {v8, v2, v9}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    iget-object v10, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v10, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    add-int/lit8 v11, v8, 0x1

    if-ge v8, v9, :cond_2

    iget-object v9, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v9, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    move v12, v8

    if-ne v9, v10, :cond_4

    move v13, v10

    :cond_3
    if-lez v12, :cond_6

    add-int/lit8 v12, v12, -0x1

    iget-object v13, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    if-eq v13, v10, :cond_5

    :goto_3
    move v10, v13

    :cond_4
    move v13, v12

    goto :goto_4

    :cond_5
    if-nez v12, :cond_3

    move v12, v8

    move v10, v13

    move v13, v2

    goto :goto_4

    :cond_6
    move v12, v8

    goto :goto_3

    :goto_4
    add-int/lit8 v14, v8, 0x2

    :goto_5
    if-ge v14, v6, :cond_7

    iget-object v15, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v15, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    if-ne v15, v9, :cond_7

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    int-to-float v6, v12

    div-float/2addr v6, v5

    int-to-float v11, v11

    div-float/2addr v11, v5

    if-nez v4, :cond_8

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_6

    :cond_8
    const/high16 v5, 0x3e000000    # 0.125f

    int-to-float v14, v4

    div-float/2addr v5, v14

    :goto_6
    if-ne v12, v8, :cond_9

    sub-float v8, v1, v6

    cmpg-float v5, v8, v5

    if-gez v5, :cond_9

    goto :goto_7

    :cond_9
    sub-int/2addr v9, v10

    int-to-float v5, v9

    sub-float v8, v1, v6

    mul-float/2addr v8, v5

    sub-float/2addr v11, v6

    div-float/2addr v8, v11

    float-to-int v5, v8

    add-int/2addr v10, v5

    :goto_7
    sub-int/2addr v4, v7

    invoke-static {v10, v2, v4}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v4

    goto :goto_8

    :cond_a
    int-to-float v5, v4

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sub-int/2addr v4, v7

    invoke-static {v5, v2, v4}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v4

    const/4 v13, -0x1

    :goto_8
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v6, :cond_b

    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_9

    :cond_b
    instance-of v6, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v6, :cond_c

    check-cast v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v5, v4, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(IZ)V

    :cond_c
    :goto_9
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_a

    :cond_d
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    :goto_a
    invoke-virtual {v0, v4, v5, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    iput v13, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    move/from16 v3, p2

    invoke-virtual {v0, v3, v13}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(FI)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SeslFastScroller"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    if-nez v1, :cond_f

    if-eqz v3, :cond_f

    iget-object v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_e
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v2

    iget-object v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    iget-object v4, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v3, 0xa7

    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    sget-object v2, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v7, v0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    goto :goto_b

    :cond_f
    if-eqz v1, :cond_10

    if-nez v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    :cond_10
    :goto_b
    return-void
.end method

.method public final setScrollbarPosition(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    aget p1, p1, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollRange:I

    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollExtent:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_3
    return-void
.end method

.method public final setState(I)V
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDeferHide:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(FI)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    const/4 v4, -0x1

    iput v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v4, 0x96

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/view/View;

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v7, v6, v2

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v7, v6, v0

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v7, v6, v1

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {v5, v3, v6}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v6, v0, [Landroid/animation/Animator;

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    sget-object v5, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbWidthAnimator:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;

    if-eqz v4, :cond_8

    if-ne p1, v1, :cond_5

    move v5, v0

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    if-eqz v5, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_6
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v6, v4, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mWidthAnimator:Landroidx/recyclerview/animation/SeslFloatAnimatable;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/animation/SeslAnimatable;->tryAnimateTo(Ljava/lang/Object;)V

    if-eqz v5, :cond_7

    iget v3, v4, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mActivatedColor:I

    goto :goto_3

    :cond_7
    iget v3, v4, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mDefaultColor:I

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v4, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$SeslFastScrollThumbAnimator;->mColorAnimator:Landroidx/recyclerview/animation/SeslColorAnimatable;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/animation/SeslAnimatable;->tryAnimateTo(Ljava/lang/Object;)V

    :cond_8
    iput p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v1, :cond_9

    goto :goto_4

    :cond_9
    move v0, v2

    :goto_4
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method public final setThumbPos(F)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    mul-float/2addr p1, v2

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    add-float/2addr p1, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    sub-float/2addr p1, v3

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method public final transitionPreviewLayout(FI)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object p2, v2, p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, ""

    if-ne v6, v1, :cond_2

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-ne v6, v8, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_3
    :goto_2
    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const/high16 v6, 0x447a0000    # 1000.0f

    cmpl-float p1, p1, v6

    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-lez p1, :cond_5

    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mFastVibrateIndex:I

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_3

    :cond_5
    iget p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mNormalVibrateIndex:I

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_6
    :goto_3
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v9, v1, [F

    aput v6, v9, v0

    invoke-static {v5, p1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    new-array v12, v1, [F

    aput v7, v12, v0

    invoke-static {v4, p1, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p1

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$1;

    invoke-virtual {p1, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v7, v10

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int/2addr v7, v10

    iput v7, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v10, v7

    iput v10, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v7

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    filled-new-array {v10}, [I

    move-result-object v10

    sget-object v11, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->LEFT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$2;

    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v7, v0

    iget v10, v2, Landroid/graphics/Rect;->top:I

    filled-new-array {v10}, [I

    move-result-object v10

    sget-object v11, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->TOP:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$3;

    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v7, v1

    iget v10, v2, Landroid/graphics/Rect;->right:I

    filled-new-array {v10}, [I

    move-result-object v10

    sget-object v11, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$4;

    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v7, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v2}, [I

    move-result-object v2

    sget-object v8, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$5;

    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v7, v8

    invoke-static {v3, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0x64

    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v2, v9

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    if-le v3, v2, :cond_7

    int-to-float v2, v2

    int-to-float v9, v3

    div-float/2addr v2, v9

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setScaleX(F)V

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v1, [F

    aput v6, v9, v0

    invoke-static {v5, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setScaleX(F)V

    :goto_4
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-le v2, v3, :cond_8

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v1, [F

    aput v3, v5, v0

    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_8
    iget-object p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final transitionToVisible()V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v6, 0xa7

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v3, v4

    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v3, v5

    iget-object v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v3, v1

    const/4 v6, 0x0

    invoke-static {v0, v6, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final updateLayout()V
    .locals 9

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollRange:I

    if-lez v4, :cond_1

    if-ne v2, v4, :cond_1

    iget v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollExtent:I

    if-lez v4, :cond_1

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gtz v4, :cond_a

    :cond_1
    iget-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    if-eqz v4, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollRange:I

    iput v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollExtent:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/high16 v6, 0x1000000

    if-eq v5, v6, :cond_3

    if-nez v5, :cond_5

    :cond_3
    iget v7, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v7

    iput v8, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v7

    iput v8, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mWidth:I

    iget v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-ne v6, v1, :cond_4

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->left:I

    :cond_5
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-boolean v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    const v6, 0x7f071245

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_6
    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :goto_1
    iput v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071244

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollExtent:I

    iget v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mListScrollRange:I

    int-to-float v0, v0

    int-to-float v6, v6

    mul-float/2addr v0, v6

    int-to-float v6, v7

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v0, v5, :cond_7

    goto :goto_2

    :cond_7
    move v5, v0

    :goto_2
    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v5, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/high16 v8, -0x80000000

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    iget v6, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    iget v7, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackVerticalPadding:I

    if-ne v6, v4, :cond_8

    iget v4, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v7

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v1

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    add-int/2addr v6, v7

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v7

    move v4, v6

    :goto_3
    if-ge v5, v4, :cond_9

    const-string v6, "Error occured during layoutTrack() because bottom["

    const-string v7, "] is less than top["

    const-string v8, "]."

    invoke-static {v5, v5, v6, v7, v8}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SeslFastScroller"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    div-int/2addr v2, v1

    add-int/2addr v2, v7

    add-int/2addr v6, v2

    invoke-virtual {v0, v2, v4, v6, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    iput-boolean v3, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_a

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    :cond_a
    return-void
.end method

.method public final updateLongList(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged()V

    :cond_2
    return-void
.end method

.method public final updateOffsetAndRange()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v2, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float/2addr v0, v2

    iget v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mImmersiveBottomPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p0, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    :cond_1
    return-void
.end method
