.class public final Landroidx/slice/widget/RowView;
.super Landroidx/slice/widget/SliceChildView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final mActionDivider:Landroid/view/View;

.field public final mActionSpinner:Landroid/widget/ProgressBar;

.field public final mActions:Landroid/util/ArrayMap;

.field public mAllowTwoLines:Z

.field public final mBottomDivider:Landroid/view/View;

.field public final mContent:Landroid/widget/LinearLayout;

.field public final mEndContainer:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field public mHeaderActions:Ljava/util/List;

.field public mIconSize:I

.field public mImageSize:I

.field public mIsHeader:Z

.field public mIsRangeSliding:Z

.field public mIsStarRating:Z

.field public mLastSentRangeUpdate:J

.field public final mLastUpdatedText:Landroid/widget/TextView;

.field public mLoadingActions:Ljava/util/Set;

.field public mMeasuredRangeHeight:I

.field public final mPrimaryText:Landroid/widget/TextView;

.field public mRangeBar:Landroid/view/View;

.field public mRangeItem:Landroidx/slice/SliceItem;

.field public mRangeMaxValue:I

.field public mRangeMinValue:I

.field public final mRangeUpdater:Landroidx/slice/widget/RowView$2;

.field public mRangeUpdaterRunning:Z

.field public mRangeValue:I

.field public final mRatingBarChangeListener:Landroidx/slice/widget/RowView$4;

.field public final mRootView:Landroid/widget/LinearLayout;

.field public mRowAction:Landroidx/slice/core/SliceActionImpl;

.field public mRowContent:Landroidx/slice/widget/RowContent;

.field public mRowIndex:I

.field public final mSecondaryText:Landroid/widget/TextView;

.field public mSeeMoreView:Landroid/view/View;

.field public final mSeekBarChangeListener:Landroidx/slice/widget/RowView$3;

.field public mSelectionItem:Landroidx/slice/SliceItem;

.field public mSelectionOptionKeys:Ljava/util/ArrayList;

.field public mSelectionOptionValues:Ljava/util/ArrayList;

.field public mSelectionSpinner:Landroid/widget/Spinner;

.field public mShowActionSpinner:Z

.field public final mStartContainer:Landroid/widget/LinearLayout;

.field public mStartItem:Landroidx/slice/SliceItem;

.field public final mSubContent:Landroid/widget/LinearLayout;

.field public final mToggles:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    new-instance v0, Landroidx/slice/widget/RowView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$2;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdater:Landroidx/slice/widget/RowView$2;

    new-instance v0, Landroidx/slice/widget/RowView$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$3;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroidx/slice/widget/RowView$3;

    new-instance v0, Landroidx/slice/widget/RowView$4;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$4;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRatingBarChangeListener:Landroidx/slice/widget/RowView$4;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const p1, 0x7f0a050f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0c49

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    const v0, 0x7f0a05ec

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    const v0, 0x7f0a01a6

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04013e

    invoke-static {v2, v1}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public static setViewSidePaddings(Landroid/view/View;II)V
    .locals 2

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ltz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V
    .locals 9

    new-instance v6, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-direct {v6, v0, v1, v2}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v0, v7, :cond_0

    invoke-virtual {p3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result p3

    xor-int/lit8 v0, p3, 0x1

    if-eqz p3, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v8

    :goto_0
    new-instance v2, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v3

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v2, v3, v0, v1, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    if-eqz p4, :cond_2

    iput v8, v2, Landroidx/slice/widget/EventInfo;->actionPosition:I

    iput v8, v2, Landroidx/slice/widget/EventInfo;->actionIndex:I

    const/4 p4, 0x1

    iput p4, v2, Landroidx/slice/widget/EventInfo;->actionCount:I

    :cond_2
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceAdapter;

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;ILandroidx/slice/widget/SliceAdapter;)V

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object p4, p1, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v6, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    if-nez p2, :cond_3

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p4, 0x7f0d0010

    invoke-virtual {p2, p4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, v6, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v6, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p4, v6, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    const v0, 0x7f04013e

    invoke-static {v0, p2}, Landroidx/slice/widget/SliceViewUtil;->getColorAttr(ILandroid/content/Context;)I

    move-result p2

    invoke-virtual {p4}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object p2, v6, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v6, Landroidx/slice/widget/SliceActionView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_5
    if-eqz p3, :cond_6

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public final addItem(Landroidx/slice/SliceItem;IZ)Z
    .locals 9

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v4, "action"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p1, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v4, "shortcut"

    invoke-static {v1, v4}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v1, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {p0, v1, p2, v0, p3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    return v2

    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p3

    iget-object p3, p3, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    iget-object p1, p1, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    :cond_4
    iget-object p3, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    iget-object p3, p1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p3, Landroidx/core/graphics/drawable/IconCompat;

    move-object v4, v1

    goto :goto_1

    :cond_5
    iget-object p3, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v4, "long"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    move-object v4, p1

    move-object p3, v1

    goto :goto_1

    :cond_6
    move-object p3, v1

    move-object v4, p3

    :goto_1
    if-eqz p3, :cond_11

    iget-object v1, p1, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v4, "no_tint"

    invoke-static {v1, v4}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v4, p1, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v5, "raw"

    invoke-static {v4, v5}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v7, :cond_7

    iget v7, v7, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    iget-object p1, p1, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v7, "large"

    invoke-static {p1, v7}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Landroidx/slice/CornerDrawable;

    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v7, v7, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    invoke-direct {p1, p3, v7}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const/4 p1, -0x1

    if-eqz v1, :cond_8

    if-eq p2, p1, :cond_8

    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_8
    iget-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz p2, :cond_c

    iget v0, p2, Landroidx/slice/widget/RowStyle;->mIconSize:I

    if-lez v0, :cond_a

    goto :goto_4

    :cond_a
    iget v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    :goto_4
    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    iget p2, p2, Landroidx/slice/widget/RowStyle;->mImageSize:I

    if-lez p2, :cond_b

    goto :goto_5

    :cond_b
    iget p2, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    :goto_5
    iput p2, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    :cond_c
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_d

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_6

    :cond_d
    iget v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    :goto_6
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v4, :cond_e

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v5

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_7

    :cond_e
    iget p3, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    :goto_7
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_10

    iget p2, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    if-ne p2, p1, :cond_f

    iget p0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_8

    :cond_f
    iget p0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    sub-int/2addr p2, p0

    div-int/lit8 p0, p2, 0x2

    goto :goto_8

    :cond_10
    move p0, v3

    :goto_8
    invoke-virtual {v6, p0, p0, p0, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object v1, v6

    goto :goto_9

    :cond_11
    if-eqz v4, :cond_13

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p1, :cond_12

    iget p1, p1, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    int-to-float p1, p1

    invoke-virtual {v1, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {p0}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_13
    :goto_9
    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    move v2, v3

    :goto_a
    return v2
.end method

.method public final addSubtitle(Z)V
    .locals 8

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_15

    iget-object v0, v0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v2, v0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v2, v0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-wide v4, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide v4, 0x7528ad000L

    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    div-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f110002

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-wide/32 v4, 0x5265c00

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    div-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/high16 v6, 0x7f110000

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-wide/32 v4, 0xea60

    cmp-long v0, v6, v4

    if-lez v0, :cond_5

    div-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f110001

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f13002c

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v3

    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    if-eqz v2, :cond_8

    iget-object v2, v2, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v4, "partial"

    invoke-static {v2, v4}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v1

    :goto_4
    if-eqz v2, :cond_c

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v4, :cond_c

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_a

    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    :goto_5
    int-to-float v4, v4

    goto :goto_6

    :cond_a
    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    goto :goto_5

    :goto_6
    invoke-virtual {v6, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v4, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    goto :goto_7

    :cond_b
    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    :goto_7
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v4, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_c
    const/4 v4, 0x2

    if-eqz v0, :cond_f

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " \u00b7 "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v3, :cond_f

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_e

    iget v3, v3, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    :goto_8
    int-to-float v3, v3

    goto :goto_9

    :cond_e
    iget v3, v3, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    goto :goto_8

    :goto_9
    invoke-virtual {v6, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_10

    move v6, v7

    goto :goto_a

    :cond_10
    move v6, v5

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    move v7, v5

    :cond_11
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-boolean v3, v3, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v3, :cond_12

    iget-boolean v3, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    if-eqz v3, :cond_13

    :cond_12
    if-nez p1, :cond_13

    if-eqz v2, :cond_13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_b

    :cond_13
    move v4, v1

    :goto_b
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-ne v4, v1, :cond_14

    goto :goto_c

    :cond_14
    move v1, v5

    :goto_c
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_15
    :goto_d
    return-void
.end method

.method public final getRowContentHeight()I
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v1, v1, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    sub-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public final measureChildWithExactHeight(Landroid/view/View;II)V
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p3, v0

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    add-int/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v2, :cond_b

    iget-object v3, v2, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "date_picker"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "time_picker"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "toggle"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->onClickPicker(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->onClickPicker(Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    :goto_1
    if-eqz v0, :cond_7

    instance-of p1, p1, Landroidx/slice/widget/SliceActionView;

    if-nez p1, :cond_7

    iget-object p0, v0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-nez p0, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    if-eqz p0, :cond_b

    iget-object p0, v0, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v0, Landroidx/slice/widget/SliceActionView;->mActionView:Landroid/view/View;

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->sendActionInternal()V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-boolean p1, p1, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    goto :goto_4

    :cond_8
    :try_start_0
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object p1, p1, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    if-eqz p1, :cond_9

    new-instance p1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    iget v2, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    const/4 v3, 0x3

    invoke-direct {p1, v0, v3, v1, v2}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v1, v1, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;->onSliceAction(Landroidx/slice/widget/EventInfo;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_9
    :goto_2
    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceAdapter;

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-virtual {p1, v0, v1}, Landroidx/slice/widget/SliceAdapter;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string p1, "RowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onClickPicker(Z)V
    .locals 13

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ASDF"

    const-string v1, ":"

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v2, v2, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v1, "long"

    const-string v2, "millis"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p1, :cond_2

    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v9, Landroidx/slice/widget/RowView$DateSetListener;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-direct {v9, p0, v0, v1}, Landroidx/slice/widget/RowView$DateSetListener;-><init>(Landroidx/slice/widget/RowView;Landroidx/slice/SliceItem;I)V

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 p0, 0x2

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 p0, 0x5

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const v8, 0x7f1401fd

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroidx/slice/widget/RowView$TimeSetListener;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v0, v0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-direct {v4, p0, v0, v1}, Landroidx/slice/widget/RowView$TimeSetListener;-><init>(Landroidx/slice/widget/RowView;Landroidx/slice/SliceItem;I)V

    const/16 p0, 0xb

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const v2, 0x7f1401fd

    move-object v0, p1

    move-object v1, v3

    move-object v3, v4

    move v4, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    :goto_0
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_2

    if-ltz p3, :cond_2

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result p2

    iget p4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    const/4 p5, 0x5

    const/4 v0, 0x6

    invoke-direct {p1, p2, p5, v0, p4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;->onSliceAction(Landroidx/slice/widget/EventInfo;)V

    :cond_1
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const/high16 p4, 0x10000000

    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "android.app.slice.extra.SELECTION"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RowView"

    const-string p2, "PendingIntent for slice cannot be sent"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p5

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p5, v0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez p2, :cond_0

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget p2, p2, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    iget p3, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p3

    add-int/2addr p3, p2

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p3, p2

    iget p2, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    add-int/2addr p2, p3

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p2

    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p2, p3

    iget-object p3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/widget/Spinner;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move p2, v0

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v2, v2, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    invoke-virtual {p0, v1, p1, v2}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v2, v2, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    invoke-virtual {p0, v1, p1, v2}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_2
    :goto_1
    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    add-int/2addr p2, v1

    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    invoke-static {p2, p1, v0}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr v1, p2

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public final populateViews(Z)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    :cond_1
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v4}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v4

    if-eq v4, v1, :cond_2

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v4}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0015

    invoke-virtual {p1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Landroidx/slice/widget/RowView$1;

    invoke-direct {v0, p0, p1}, Landroidx/slice/widget/RowView$1;-><init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_3
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v1, v1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v4, v4, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    iget-object v4, v4, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_6
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_7

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-boolean v7, v4, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v7, :cond_8

    iget-boolean v8, v4, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    if-nez v8, :cond_8

    move-object v8, v6

    goto :goto_2

    :cond_8
    iget-object v8, v4, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    :goto_2
    iput-object v8, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v8, :cond_a

    if-eqz v7, :cond_9

    iget-boolean v4, v4, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    if-eqz v4, :cond_a

    :cond_9
    move v4, v2

    goto :goto_3

    :cond_a
    move v4, v3

    :goto_3
    if-eqz v4, :cond_b

    iget v4, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    invoke-virtual {p0, v8, v4, v2}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v4

    :cond_b
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    move v4, v3

    goto :goto_4

    :cond_c
    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v4, v4, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_d

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v7, :cond_10

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-boolean v9, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v9, :cond_e

    iget v7, v7, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    :goto_5
    int-to-float v7, v7

    goto :goto_6

    :cond_e
    iget v7, v7, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    goto :goto_5

    :goto_6
    invoke-virtual {v8, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-object v8, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget-object v9, v8, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_7

    :cond_f
    iget-object v8, v8, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v8, v8, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    :goto_7
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_11

    move v8, v3

    goto :goto_8

    :cond_11
    move v8, v5

    :goto_8
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_9

    :cond_12
    move v4, v3

    :goto_9
    invoke-virtual {p0, v4}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-boolean v7, v7, Landroidx/slice/widget/RowContent;->mShowBottomDivider:Z

    if-eqz v7, :cond_13

    move v7, v3

    goto :goto_a

    :cond_13
    move v7, v5

    :goto_a
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v4, v4, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_17

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eq v4, v7, :cond_17

    new-instance v7, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v7, v4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v7}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v4}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_b
    move v4, v1

    goto :goto_c

    :sswitch_0
    const-string v7, "date_picker"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_b

    :cond_14
    move v4, v0

    goto :goto_c

    :sswitch_1
    const-string/jumbo v7, "time_picker"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_b

    :cond_15
    move v4, v2

    goto :goto_c

    :sswitch_2
    const-string/jumbo v7, "toggle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_b

    :cond_16
    move v4, v3

    :goto_c
    packed-switch v4, :pswitch_data_0

    goto :goto_d

    :pswitch_0
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v2}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v2}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    return-void

    :pswitch_2
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0, v1, v3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v2}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    return-void

    :cond_17
    :goto_d
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v4, v4, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_30

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v7, :cond_18

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v2}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    :cond_18
    iput-object v4, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v7, "int"

    const-string v8, "range_mode"

    invoke-static {v4, v7, v8}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    if-ne v4, v0, :cond_19

    move v4, v2

    goto :goto_e

    :cond_19
    move v4, v3

    :goto_e
    iput-boolean v4, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    :cond_1a
    if-nez p1, :cond_2f

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v4, "min"

    invoke-static {p1, v7, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    move-result p1

    goto :goto_f

    :cond_1b
    move p1, v3

    :goto_f
    iput p1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v9, "max"

    invoke-static {v4, v7, v9}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iget-boolean v9, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    if-eqz v9, :cond_1c

    const/4 v9, 0x5

    goto :goto_10

    :cond_1c
    const/16 v9, 0x64

    :goto_10
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getInt()I

    move-result v9

    :cond_1d
    iput v9, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string/jumbo v9, "value"

    invoke-static {v4, v7, v9}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    sub-int/2addr v4, p1

    goto :goto_11

    :cond_1e
    move v4, v3

    :goto_11
    iput v4, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_1f

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    :cond_1f
    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsStarRating:Z

    const/4 v4, -0x2

    if-eqz p1, :cond_20

    new-instance p1, Landroid/widget/RatingBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v5, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setStepSize(F)V

    iget v0, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setNumStars(I)V

    iget v0, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    invoke-virtual {p1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRatingBarChangeListener:Landroidx/slice/widget/RowView$4;

    invoke-virtual {p1, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    goto/16 :goto_19

    :cond_20
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-static {p1, v7, v8}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    move-result p1

    if-ne p1, v2, :cond_21

    move p1, v2

    goto :goto_12

    :cond_21
    move p1, v3

    :goto_12
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    iget-object v0, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v7, "action"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v7, :cond_22

    move v7, v2

    goto :goto_13

    :cond_22
    move v7, v3

    :goto_13
    if-eqz v0, :cond_24

    if-eqz v7, :cond_23

    new-instance v6, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    goto :goto_15

    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0017

    invoke-virtual {v6, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v7, :cond_28

    iget v7, v7, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    if-eqz v6, :cond_28

    if-ltz v7, :cond_28

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_15

    :cond_24
    if-eqz v7, :cond_25

    new-instance v7, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1010078

    invoke-direct {v7, v8, v6, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v6, v7

    goto :goto_14

    :cond_25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d000f

    invoke-virtual {v6, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz v7, :cond_27

    iget v7, v7, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    if-eqz v6, :cond_26

    if-ltz v7, :cond_26

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    iget-object v7, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget v8, v7, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    iget v7, v7, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    invoke-static {v6, v8, v7}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    :cond_27
    :goto_14
    if-eqz p1, :cond_28

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_28
    :goto_15
    if-eqz p1, :cond_29

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_16

    :cond_29
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_16
    iget v8, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    if-eq v8, v1, :cond_2b

    if-eqz v7, :cond_2b

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    if-eqz p1, :cond_2a

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    :cond_2a
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    :goto_17
    iget p1, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    iget v7, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    sub-int/2addr p1, v7

    invoke-virtual {v6, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget p1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v6, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_2c

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_18

    :cond_2c
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_18
    iput-object v6, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz v0, :cond_2f

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object p1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz p1, :cond_2d

    iget-object p1, p1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p1, Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_2d
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v4, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    if-eq v4, v1, :cond_2e

    if-eqz p1, :cond_2e

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroidx/slice/widget/RowView$3;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2f
    :goto_19
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_30

    return-void

    :cond_30
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object p1, p1, Landroidx/slice/widget/RowContent;->mSelection:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_36

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_31

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    iget-object p1, p1, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move v0, v3

    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    iget-object v4, v1, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v5, "selection_option"

    invoke-static {v4, v5}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_1b

    :cond_32
    const-string v4, "selection_option_key"

    const-string/jumbo v5, "text"

    invoke-static {v1, v5, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const-string v6, "selection_option_value"

    invoke-static {v1, v5, v6}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v4, :cond_34

    if-nez v1, :cond_33

    goto :goto_1b

    :cond_33
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    iget-object v4, v4, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_1b
    add-int/2addr v0, v2

    goto :goto_1a

    :cond_35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0012

    invoke-virtual {p1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    const v2, 0x7f0d0014

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x7f0d0013

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_36
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final resetView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    return-void
.end method

.method public final resetViewState()V
    .locals 6

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    :cond_0
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    :cond_3
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    return-void
.end method

.method public final sendSliderValue()V
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    iget v4, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    iget v2, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4, v2}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    iput v1, v0, Landroidx/slice/widget/EventInfo;->state:I

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;->onSliceAction(Landroidx/slice/widget/EventInfo;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RowView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAllowTwoLines(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method public final setInsets(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public final setLastUpdated(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    :cond_1
    return-void
.end method

.method public final setLoadingActions(Ljava/util/Set;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    return-void
.end method

.method public final setShowLastUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method public final setSliceActions(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    :cond_0
    return-void
.end method

.method public final setSliceItem(Landroidx/slice/widget/SliceContent;ZIILcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;)V
    .locals 3

    iput-object p5, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p5, :cond_0

    new-instance v0, Landroidx/slice/SliceStructure;

    iget-object p5, p5, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-direct {v0, p5}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p5, Landroidx/slice/SliceStructure;

    iget-object v1, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-direct {p5, v1}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p5}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p4

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/slice/SliceStructure;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object p5, p5, Landroidx/slice/SliceStructure;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, p4

    :goto_2
    iput-boolean p4, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    iput-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    check-cast p1, Landroidx/slice/widget/RowContent;

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iput p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    return-void
.end method

.method public final setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 2

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iput-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    iget v0, p2, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    iget p2, p2, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget v0, p2, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    iget p2, p2, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget v0, p2, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    iget p2, p2, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSubContent:Landroid/widget/LinearLayout;

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget v0, p2, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    iget p2, p2, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget v0, p2, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    iget p2, p2, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    invoke-static {p1, v0, p2}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget v0, p2, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    iget p2, p2, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    if-gez v0, :cond_0

    if-gez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-ltz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_2
    if-ltz p2, :cond_3

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget p2, p2, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget-object p2, p1, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_6
    iget-object p1, p1, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget p1, p1, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_2
    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    iget-object p2, p1, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_7
    iget-object p1, p1, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget p1, p1, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->setTint(I)V

    :cond_8
    return-void
.end method

.method public final setTint(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method public final setViewClickable(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x101030e

    invoke-static {v0, p0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public final updateActionSpinner()V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    iget-boolean p0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final updateEndItems()V
    .locals 12

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_15

    iget-object v1, v1, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v2, v1, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_1
    iget-boolean v1, v1, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-boolean v1, v1, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v7, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v8, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const-string v10, "action"

    if-ge v4, v9, :cond_8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroidx/slice/SliceItem;

    if-eqz v9, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/core/SliceActionImpl;

    iget-object v9, v9, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    :goto_1
    const/4 v11, 0x3

    if-ge v5, v11, :cond_7

    iget v11, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    invoke-virtual {p0, v9, v11, v3}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v11

    if-eqz v11, :cond_7

    if-nez v7, :cond_4

    invoke-static {v9, v10, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object v7, v9

    :cond_4
    add-int/2addr v5, v0

    if-ne v5, v0, :cond_7

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    const-string v8, "image"

    invoke-static {v6, v8, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v0

    goto :goto_2

    :cond_5
    move v6, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v0, :cond_6

    invoke-static {v9, v10, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    if-eqz v8, :cond_6

    move v8, v0

    goto :goto_3

    :cond_6
    move v8, v3

    :cond_7
    :goto_3
    add-int/2addr v4, v0

    goto :goto_0

    :cond_8
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    if-lez v5, :cond_9

    move v9, v3

    goto :goto_4

    :cond_9
    move v9, v4

    :goto_4
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v9, :cond_b

    if-nez v6, :cond_a

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-boolean v6, v6, Landroidx/slice/widget/RowContent;->mShowActionDivider:Z

    if-eqz v6, :cond_b

    if-eqz v8, :cond_b

    :cond_a
    move v4, v3

    :cond_b
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_c

    invoke-static {v2, v10, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_5

    :cond_c
    move v1, v3

    :goto_5
    if-eqz v7, :cond_d

    move v2, v0

    goto :goto_6

    :cond_d
    move v2, v3

    :goto_6
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v4, :cond_e

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    goto :goto_8

    :cond_e
    if-eq v2, v1, :cond_12

    if-eq v5, v0, :cond_f

    if-eqz v1, :cond_12

    :cond_f
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/core/SliceActionImpl;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    goto :goto_7

    :cond_10
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ne v1, v0, :cond_11

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/SliceActionView;

    iget-object v1, v1, Landroidx/slice/widget/SliceActionView;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    :cond_11
    :goto_7
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    move v1, v0

    goto :goto_9

    :cond_12
    :goto_8
    move v1, v3

    :goto_9
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v2, :cond_13

    if-nez v1, :cond_13

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, v2, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    :cond_13
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    const/4 v3, 0x2

    :goto_a
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_15
    :goto_b
    return-void
.end method
