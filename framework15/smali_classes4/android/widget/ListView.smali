.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FixedViewInfo;,
        Landroid/widget/ListView$FocusSelector;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_SCROLL_FACTOR:F = 0.33f

.field private static final greylist-max-o MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final greylist-max-o NO_POSITION:I = -0x1

.field static final greylist-max-o TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private blacklist mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private greylist mAreAllItemsSelectable:Z

.field private final greylist-max-o mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field greylist mDivider:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mDividerHeight:I

.field private greylist-max-o mDividerIsOpaque:Z

.field private greylist-max-o mDividerPaint:Landroid/graphics/Paint;

.field private blacklist mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private greylist-max-o mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private greylist-max-o mFooterDividersEnabled:Z

.field greylist mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHeaderDividersEnabled:Z

.field greylist mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsCacheColorOpaque:Z

.field private greylist-max-o mItemsCanFocus:Z

.field greylist-max-o mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private blacklist mSelectZeroPositionOnKeyTab:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDndListAnimator(Landroid/widget/ListView;)Lcom/samsung/android/animation/SemDragAndDropListAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    nop

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    nop

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$ArrowScrollFocusResult-IA;)V

    iput-object v2, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    iput-boolean v1, p0, Landroid/widget/ListView;->mSelectZeroPositionOnKeyTab:Z

    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v5, Lcom/android/internal/R$styleable;->ListView:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_4
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist addClickables(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    iget-object v4, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/widget/AbsListView$ClickableViewState;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Landroid/widget/AbsListView$ClickableViewState;-><init>(Landroid/view/View;Z)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v2}, Landroid/widget/ListView;->addClickables(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private greylist-max-o addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 11

    add-int/lit8 v8, p2, -0x1

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v10, v0, v1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v9
.end method

.method private greylist-max-o addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 11

    add-int/lit8 v8, p2, 0x1

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v10, v0, v1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v9
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    :cond_2
    if-lez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    :cond_4
    return-void
.end method

.method private greylist-max-o amountToScroll(II)I
    .locals 10

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/16 v3, 0x82

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_6

    add-int/lit8 v3, v2, -0x1

    if-eq p2, v4, :cond_0

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    :cond_0
    :goto_0
    if-gt v2, v3, :cond_1

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move v8, v0

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_2

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v9, v8, :cond_3

    return v5

    :cond_3
    if-eq p2, v4, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v8, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_4

    return v5

    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v8

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v5, v9, :cond_5

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5

    :cond_6
    const/4 v3, 0x0

    if-eq p2, v4, :cond_7

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    :cond_7
    :goto_1
    if-gez v3, :cond_8

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v6

    goto :goto_1

    :cond_8
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move v8, v1

    if-lez v6, :cond_9

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v9, v8, :cond_a

    return v5

    :cond_a
    if-eq p2, v4, :cond_b

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_b

    return v5

    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v8, v4

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v9, :cond_c

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private greylist-max-o amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v1, 0x21

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    if-lez p3, :cond_1

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_1

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_1

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method private greylist-max-o arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x82

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    add-int/2addr v4, v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    nop

    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6

    :cond_4
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    sub-int/2addr v4, v5

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v4, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v4

    :goto_5
    nop

    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_6
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    :goto_7
    const/4 v3, 0x0

    if-eqz v2, :cond_c

    invoke-direct {p0, v2}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a

    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    if-eq v5, v6, :cond_a

    if-ne p1, v1, :cond_8

    if-lt v5, v4, :cond_9

    :cond_8
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a

    if-le v5, v4, :cond_a

    :cond_9
    return-object v3

    :cond_a
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    if-ge v1, v5, :cond_b

    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    :cond_b
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_c

    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    :cond_c
    return-object v3
.end method

.method private greylist-max-o arrowScrollImpl(I)Z
    .locals 12

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    :cond_2
    const/4 v6, 0x0

    iget-boolean v7, p0, Landroid/widget/ListView;->mAppWidgetSnapScroll:Z

    const/16 v8, 0x21

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v10

    if-ne p1, v8, :cond_5

    if-lez v2, :cond_5

    if-lez v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, v7, v11

    if-le v10, v11, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v10, v4

    if-lez v10, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    neg-int v4, v10

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/16 v10, 0x82

    if-ne p1, v10, :cond_6

    iget-object v10, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    sub-int/2addr v10, v9

    if-ge v2, v10, :cond_6

    if-lez v4, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, v7, v11

    if-ne v10, v11, :cond_6

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    const/4 v6, 0x1

    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    :cond_7
    if-eqz v5, :cond_8

    move v7, v9

    goto :goto_2

    :cond_8
    move v7, v1

    :goto_2
    const/4 v10, -0x1

    if-eq v3, v10, :cond_b

    if-eqz v5, :cond_9

    move v11, v9

    goto :goto_3

    :cond_9
    move v11, v1

    :goto_3
    invoke-direct {p0, v0, p1, v3, v11}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    move v2, v3

    iget-boolean v11, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v11, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/view/View;->clearFocus()V

    :cond_a
    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    :cond_b
    if-lez v4, :cond_e

    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    if-nez v6, :cond_d

    if-ne p1, v8, :cond_c

    move v8, v4

    goto :goto_4

    :cond_c
    neg-int v8, v4

    :goto_4
    invoke-direct {p0, v8}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    :cond_d
    const/4 v7, 0x1

    :cond_e
    iget-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v8, :cond_10

    if-nez v5, :cond_10

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-direct {p0, v8, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-direct {p0, v8}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v11

    if-lez v11, :cond_10

    :cond_f
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    :cond_10
    if-ne v3, v10, :cond_11

    if-eqz v0, :cond_11

    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_11

    const/4 v0, 0x0

    iget-object v8, p0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    :cond_11
    if-eqz v7, :cond_14

    if-eqz v0, :cond_12

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mSelectedTop:I

    :cond_12
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_13
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    return v9

    :cond_14
    return v1
.end method

.method private greylist-max-o clearRecycledState(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_20

    :cond_0
    iget-boolean v3, v0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->layoutChildren()V

    :cond_1
    iget-boolean v3, v0, Landroid/widget/ListView;->mAppWidgetInnerFocus:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_2

    iput-object v5, v0, Landroid/widget/ListView;->mNextClickable:Landroid/view/View;

    :cond_2
    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eq v7, v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->keyPressed()V

    const/4 v3, 0x1

    :cond_3
    iget-boolean v8, v0, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-eqz v8, :cond_4

    iput-boolean v4, v0, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    const-string v8, "ListView"

    const-string v9, "mIsHoveredByMouse false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v3, :cond_31

    if-eq v7, v6, :cond_31

    const/16 v8, 0x82

    const/16 v9, 0x21

    const/4 v10, 0x2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1e

    :sswitch_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_5
    move v8, v4

    goto :goto_1

    :cond_6
    :goto_0
    move v8, v6

    :goto_1
    move v3, v8

    move/from16 v5, p2

    goto/16 :goto_1f

    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    move v8, v4

    goto :goto_3

    :cond_8
    :goto_2
    move v8, v6

    :goto_3
    move v3, v8

    move/from16 v5, p2

    goto/16 :goto_1f

    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    move v8, v4

    goto :goto_5

    :cond_a
    :goto_4
    move v8, v6

    :goto_5
    move v3, v8

    move/from16 v5, p2

    goto/16 :goto_1f

    :cond_b
    invoke-virtual {v2, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_6

    :cond_c
    move v8, v4

    goto :goto_7

    :cond_d
    :goto_6
    move v8, v6

    :goto_7
    move v3, v8

    move/from16 v5, p2

    goto/16 :goto_1f

    :sswitch_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_8

    :cond_e
    move v8, v4

    goto :goto_9

    :cond_f
    :goto_8
    move v8, v6

    :goto_9
    move v3, v8

    move/from16 v5, p2

    goto/16 :goto_1f

    :cond_10
    invoke-virtual {v2, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_a

    :cond_11
    move v8, v4

    goto :goto_b

    :cond_12
    :goto_a
    move v8, v6

    :goto_b
    move v3, v8

    move/from16 v5, p2

    goto/16 :goto_1f

    :sswitch_4
    const/4 v11, 0x0

    iget-boolean v12, v0, Landroid/widget/ListView;->mAppWidgetSnapScroll:Z

    if-eqz v12, :cond_17

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getDeepestFocusedChild()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v13

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-eq v13, v14, :cond_13

    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->clearFocus()V

    :cond_13
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v13

    invoke-virtual {v13, v0, v12, v10}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-eqz v13, :cond_16

    new-array v15, v10, [I

    new-array v10, v10, [I

    invoke-virtual {v0, v15}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    invoke-virtual {v13, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v16, v15, v6

    add-int v5, v16, v14

    aget v16, v10, v6

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v9, v16, v17

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-ge v5, v9, :cond_14

    const/4 v11, 0x1

    aget v8, v10, v6

    if-le v8, v5, :cond_16

    iget v8, v0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v18

    aget v19, v10, v6

    sub-int v4, v18, v19

    invoke-virtual {v0, v8, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_d

    :cond_14
    aget v4, v10, v6

    if-gez v4, :cond_16

    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    aget v8, v10, v6

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v8, v14, 0x3

    if-ge v4, v8, :cond_15

    const/4 v4, 0x0

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    iget-object v6, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x3

    sub-int/2addr v4, v8

    const/4 v3, 0x0

    :goto_c
    iget v6, v0, Landroid/widget/ListView;->mSelectedPosition:I

    neg-int v8, v4

    invoke-virtual {v0, v6, v8}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    move/from16 v5, p2

    goto/16 :goto_1f

    :cond_16
    :goto_d
    if-nez v11, :cond_17

    const/4 v4, 0x0

    return v4

    :cond_17
    iget-boolean v4, v0, Landroid/widget/ListView;->mAppWidgetInnerFocus:Z

    if-eqz v4, :cond_19

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ListView;->addClickables(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->consumeClickables()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v0, Landroid/widget/ListView;->mNextClickable:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->viewSelectorLikeFocus(Landroid/view/View;)V

    const/4 v4, 0x1

    return v4

    :cond_18
    const/4 v4, 0x1

    goto :goto_e

    :cond_19
    const/4 v4, 0x1

    :goto_e
    iget-boolean v5, v0, Landroid/widget/ListView;->mSelectZeroPositionOnKeyTab:Z

    if-eqz v5, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v5, v6, :cond_1b

    iget-boolean v4, v0, Landroid/widget/ListView;->mAppWidgetInnerFocus:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    goto :goto_f

    :cond_1a
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v4, 0x1

    return v4

    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1d

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v4, 0x0

    goto :goto_11

    :cond_1d
    :goto_10
    const/4 v4, 0x1

    :goto_11
    move v3, v4

    goto :goto_14

    :cond_1e
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_20

    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v4, 0x0

    goto :goto_13

    :cond_20
    :goto_12
    const/4 v4, 0x1

    :goto_13
    move v3, v4

    :cond_21
    :goto_14
    if-eqz v11, :cond_22

    const/4 v4, 0x0

    goto :goto_15

    :cond_22
    move v4, v3

    :goto_15
    move v3, v4

    move/from16 v5, p2

    goto/16 :goto_1f

    :sswitch_5
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_31

    :cond_23
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v4, v0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    const/16 v4, 0x42

    invoke-direct {v0, v4}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    :cond_24
    move/from16 v5, p2

    goto/16 :goto_1f

    :sswitch_6
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_25

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_31

    :cond_25
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v4, v0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    const/16 v4, 0x11

    invoke-direct {v0, v4}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v3

    move/from16 v5, p2

    goto/16 :goto_1f

    :sswitch_7
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_18

    :cond_26
    invoke-virtual {v2, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_28

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_16

    :cond_27
    const/4 v4, 0x0

    goto :goto_17

    :cond_28
    :goto_16
    const/4 v4, 0x1

    :goto_17
    move v3, v4

    move/from16 v5, p2

    goto/16 :goto_1f

    :cond_29
    :goto_18
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v4, v0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_2a

    move v4, v3

    move/from16 v3, p2

    :goto_19
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_2f

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v4, 0x1

    move v3, v5

    goto :goto_19

    :cond_2a
    move/from16 v5, p2

    goto :goto_1f

    :sswitch_8
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_2e

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_1c

    :cond_2b
    invoke-virtual {v2, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_2d

    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_1a

    :cond_2c
    const/4 v4, 0x0

    goto :goto_1b

    :cond_2d
    :goto_1a
    const/4 v4, 0x1

    :goto_1b
    move v3, v4

    move/from16 v5, p2

    goto :goto_1f

    :cond_2e
    :goto_1c
    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    iput v4, v0, Landroid/widget/ListView;->mSemCurrentFocusPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_30

    move v4, v3

    move/from16 v3, p2

    :goto_1d
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_2f

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v4, 0x1

    move v3, v5

    goto :goto_1d

    :cond_2f
    move v3, v4

    goto :goto_1f

    :cond_30
    move/from16 v5, p2

    goto :goto_1f

    :cond_31
    :goto_1e
    move/from16 v5, p2

    :goto_1f
    if-eqz v3, :cond_33

    iget-boolean v4, v0, Landroid/widget/ListView;->mAppWidgetInnerFocus:Z

    if-eqz v4, :cond_32

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-nez v4, :cond_32

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/widget/ListView;->mNextClickable:Landroid/view/View;

    iget-object v4, v0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :cond_32
    const/4 v4, 0x1

    return v4

    :cond_33
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_34

    return v4

    :cond_34
    packed-switch v7, :pswitch_data_0

    const/4 v4, 0x0

    return v4

    :pswitch_0
    invoke-super {v0, v1, v5, v2}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :pswitch_1
    invoke-super {v0, v1, v2}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :pswitch_2
    invoke-super {v0, v1, v2}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :cond_35
    :goto_20
    return v4

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x3d -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist consumeClickables()Z
    .locals 6

    iget-object v0, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$ClickableViewState;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/AbsListView$ClickableViewState;->getWasFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/widget/AbsListView$ClickableViewState;->getView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ListView;->mNextClickable:Landroid/view/View;

    iget-object v5, p0, Landroid/widget/ListView;->mNextClickable:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ListView;->mNextClickable:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/ListView;->mNextClickable:Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView$ClickableViewState;->setWasFocused(Z)V

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView$ClickableViewState;->setIsFocused(Z)V

    iget-object v1, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_4
    iget-object v0, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return v1
.end method

.method private greylist-max-p correctTooHigh(I)V
    .locals 10

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int v4, v3, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-lez v4, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_2

    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    :cond_2
    return-void
.end method

.method private greylist-max-p correctTooLow(I)V
    .locals 11

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int v4, v1, v2

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lez v4, :cond_3

    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-le v6, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_1

    :cond_1
    :goto_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    :cond_3
    :goto_1
    return-void
.end method

.method private greylist-max-o distanceToView(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_1

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    :cond_1
    :goto_0
    return v0
.end method

.method private greylist-max-o fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ge p2, v1, :cond_3

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v3, :cond_3

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v3, v4

    if-eqz v8, :cond_2

    move-object v0, v2

    :cond_2
    nop

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private greylist-max-o fillFromMiddle(II)Landroid/view/View;
    .locals 8

    sub-int v0, p2, p1

    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v7

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    iput v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v2, v0, :cond_0

    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_0
    return-object v1
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-direct {p0, p2, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v8

    invoke-direct {p0, p3, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v9

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    neg-int v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v2, v8, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v8, v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v3, v9, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    iget-boolean v2, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_2
    return-object v1
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .locals 2

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-p fillSpecific(II)Landroid/view/View;
    .locals 7

    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooHigh(I)V

    :cond_1
    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooLow(I)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    if-eqz v3, :cond_5

    return-object v3

    :cond_5
    return-object v4
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-le p2, v1, :cond_3

    if-ltz p1, :cond_3

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v3, v4

    if-eqz v8, :cond_2

    move-object v0, v2

    :cond_2
    nop

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private greylist-max-o getArrowScrollPreviewLength()I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getBottomSelectionPixel(III)I
    .locals 2

    move v0, p1

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private blacklist getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .locals 1

    move v0, p1

    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private blacklist getViewsToRemove(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x60000

    if-eq v3, v4, :cond_1

    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->getViewsToRemove(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private greylist-max-o handleHorizontalFocusWithinListItem(I)Z
    .locals 6

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->playSoundEffect(I)V

    const/4 v4, 0x1

    return v4

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v4, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v2

    const/16 v3, 0x21

    if-ne p2, v3, :cond_0

    move v3, v2

    move v4, v1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v6, p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    move v4, v2

    move-object v5, p1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    if-nez p4, :cond_1

    if-eqz v0, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v5, v3, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_2
    if-eqz v6, :cond_4

    if-nez p4, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v6, v4, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v4, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView$FixedViewInfo;

    iget-object v6, v6, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private greylist-max-o isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o lookForSelectablePositionOnScreen(I)I
    .locals 7

    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    const/16 v1, 0x82

    const/4 v2, -0x1

    if-ne p1, v1, :cond_5

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    nop

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    return v2

    :cond_1
    if-ge v1, v0, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    move v5, v1

    :goto_1
    if-gt v5, v3, :cond_4

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    return v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v3, v2, :cond_6

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_2
    nop

    if-ltz v3, :cond_b

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_7

    goto :goto_5

    :cond_7
    if-le v3, v1, :cond_8

    move v3, v1

    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    move v5, v3

    :goto_3
    if-lt v5, v0, :cond_a

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_9

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    return v5

    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_a
    :goto_4
    return v2

    :cond_b
    :goto_5
    return v2
.end method

.method private greylist makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9

    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    return-object v0
.end method

.method private greylist-max-o measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v2, p2, 0x1

    :goto_0
    if-ge v2, p3, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o measureItem(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    :cond_0
    iget v1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private greylist-max-o measureScrapChild(Landroid/view/View;III)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-lez v2, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {p4, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method private greylist-max-o moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 14

    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    iget v9, v6, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v10

    invoke-direct {p0, v7, v8, v9}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v11

    if-lez p3, :cond_2

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v12

    iget v13, v6, Landroid/widget/ListView;->mDividerHeight:I

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v2, v0, v13

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v11, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v11

    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    neg-int v5, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    iget-boolean v1, v6, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    :cond_1
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    :goto_0
    goto/16 :goto_2

    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v10, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v10, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v11, v2

    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_4
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v12, p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, v9

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    if-ge v12, v7, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/lit8 v2, v7, 0x14

    if-ge v1, v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_6
    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object v12, p1

    :goto_2
    return-object v0
.end method

.method private final blacklist nextFocusedPositionForDirection(Landroid/view/View;II)I
    .locals 5

    const/4 v0, -0x1

    const/16 v1, 0x82

    const/4 v2, -0x1

    if-ne p3, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt v3, v1, :cond_1

    if-eq p2, v2, :cond_0

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v3, :cond_0

    add-int/lit8 v3, p2, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    :goto_0
    move v0, v3

    goto :goto_2

    :cond_1
    return v2

    :cond_2
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v3, v1, :cond_6

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v2, :cond_3

    if-gt p2, v3, :cond_3

    add-int/lit8 v4, p2, -0x1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    move v0, v4

    nop

    :goto_2
    if-ltz v0, :cond_5

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    goto :goto_3

    :cond_4
    return v0

    :cond_5
    :goto_3
    return v2

    :cond_6
    return v2
.end method

.method private final greylist-max-o nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p3, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v4, v3, :cond_1

    if-eq p2, v1, :cond_0

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v4, :cond_0

    add-int/lit8 v4, p2, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    :goto_0
    nop

    goto :goto_2

    :cond_1
    return v1

    :cond_2
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v3, :cond_7

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    if-eq p2, v1, :cond_3

    if-gt p2, v4, :cond_3

    add-int/lit8 v5, p2, -0x1

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    move v4, v5

    nop

    :goto_2
    if-ltz v4, :cond_6

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v4, v3, :cond_4

    goto :goto_4

    :cond_4
    if-ne p3, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v4, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    :cond_6
    :goto_4
    return v1

    :cond_7
    return v1
.end method

.method private blacklist pointerScroll(I)Z
    .locals 10

    iget-object v0, p0, Landroid/widget/ListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/ListView;->mNewFocusedPos:I

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ListView;->nextFocusedPositionForDirection(Landroid/view/View;II)I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v3

    const/4 v4, 0x1

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/16 v7, 0x21

    if-lez v3, :cond_5

    if-ne p1, v7, :cond_3

    if-lez v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/16 v8, 0x82

    if-ne p1, v8, :cond_4

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-ge v1, v8, :cond_4

    add-int/lit8 v2, v1, 0x1

    const/4 v6, 0x1

    :cond_4
    :goto_0
    if-ne p1, v7, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v5, v9

    if-le v8, v9, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v3

    if-ltz v8, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v3, v8

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    return v4

    :cond_6
    if-lez v3, :cond_8

    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    if-ne p1, v7, :cond_7

    move v7, v3

    goto :goto_1

    :cond_7
    neg-int v7, v3

    :goto_1
    invoke-direct {p0, v7}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    :cond_8
    return v4
.end method

.method private greylist-max-o positionOfNewFocus(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o relayoutMeasuredItem(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v3, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int v5, v4, v1

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private greylist-max-o removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private greylist-max-o removeUnusedFixedViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private greylist scrollListItemsBy(I)V
    .locals 11

    iget v0, p0, Landroid/widget/ListView;->mScrollX:I

    iget v1, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v5, 0x0

    if-gez p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_0

    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_0

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v8, v2, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v3, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v9, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v4, v8, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    :cond_3
    goto :goto_4

    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_5

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v6, :cond_5

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v3, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-le v8, v2, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v4, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v6

    invoke-virtual {v4, v7, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_7
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    :cond_8
    :goto_4
    invoke-virtual {v4}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    iget-object v5, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    iget-object v5, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    iget v5, p0, Landroid/widget/ListView;->mScrollX:I

    iget v6, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const-string/jumbo v4, "setupListItem"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    iget v10, v0, Landroid/widget/ListView;->mTouchMode:I

    if-lez v10, :cond_2

    const/4 v11, 0x3

    if-ge v10, v11, :cond_2

    iget v11, v0, Landroid/widget/ListView;->mMotionPosition:I

    if-ne v11, v2, :cond_2

    move v11, v4

    goto :goto_2

    :cond_2
    move v11, v7

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3

    move v12, v4

    goto :goto_3

    :cond_3
    move v12, v7

    :goto_3
    if-eqz p7, :cond_5

    if-nez v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    move v13, v7

    goto :goto_5

    :cond_5
    :goto_4
    move v13, v4

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    if-nez v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    :cond_6
    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v15, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eqz v9, :cond_7

    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    iget v15, v0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v15, :cond_a

    iget-object v15, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_a

    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_9

    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    iget-object v5, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v15, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_a

    iget-object v5, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_a
    :goto_6
    const/4 v5, -0x1

    if-eqz p7, :cond_b

    iget-boolean v6, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v6, :cond_c

    :cond_b
    iget-boolean v6, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v15, -0x2

    if-eqz v6, :cond_e

    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v15, :cond_e

    :cond_c
    if-eqz p4, :cond_d

    goto :goto_7

    :cond_d
    move v5, v7

    :goto_7
    invoke-virtual {v0, v1, v5, v14}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v5, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v5, v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_9

    :cond_e
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v15, :cond_f

    iput-boolean v4, v14, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_f
    if-eqz p4, :cond_10

    goto :goto_8

    :cond_10
    move v5, v7

    :goto_8
    invoke-virtual {v0, v1, v5, v14, v4}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    :cond_11
    :goto_9
    if-eqz v13, :cond_13

    iget v5, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v6, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v15

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v5, v6, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    iget v6, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-lez v6, :cond_12

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_a

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v15

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    :goto_a
    invoke-virtual {v1, v5, v7}, Landroid/view/View;->measure(II)V

    goto :goto_b

    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eqz p4, :cond_14

    move/from16 v7, p3

    goto :goto_c

    :cond_14
    sub-int v7, p3, v6

    :goto_c
    if-eqz v13, :cond_15

    add-int v15, v3, v5

    add-int v4, v7, v6

    invoke-virtual {v1, v3, v7, v15, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_d
    iget-boolean v4, v0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_16
    const-wide/16 v15, 0x8

    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private greylist-max-o shouldAdjustHeightForDivider(I)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    iget-object v3, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-lez v2, :cond_2

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    iget v11, v0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    iget-object v13, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v11, v13

    if-ge v1, v12, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    if-lt v1, v13, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    iget-boolean v5, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    iget-boolean v6, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    if-nez v5, :cond_7

    if-nez v14, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_10

    :cond_7
    :goto_6
    if-nez v6, :cond_8

    if-nez v15, :cond_6

    :cond_8
    move/from16 v17, v2

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v3

    iget-boolean v3, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_12

    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    if-eqz v8, :cond_a

    if-nez v3, :cond_11

    :cond_a
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_10

    if-nez v5, :cond_c

    if-nez v14, :cond_b

    if-lt v0, v12, :cond_b

    goto :goto_8

    :cond_b
    const/16 v16, 0x1

    goto :goto_a

    :cond_c
    :goto_8
    if-nez v3, :cond_f

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_e

    if-nez v6, :cond_d

    if-nez v15, :cond_e

    if-ge v0, v13, :cond_e

    :cond_d
    goto :goto_9

    :cond_e
    const/16 v16, 0x1

    goto :goto_a

    :cond_f
    :goto_9
    const/16 v16, 0x1

    return v16

    :cond_10
    const/16 v16, 0x1

    :goto_a
    if-eqz v10, :cond_11

    return v16

    :cond_11
    goto :goto_10

    :cond_12
    if-eqz v7, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    :goto_b
    if-ne v1, v0, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_1b

    move/from16 v19, v0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    if-nez v5, :cond_16

    if-nez v14, :cond_15

    if-lt v0, v12, :cond_15

    goto :goto_d

    :cond_15
    const/16 v16, 0x1

    goto :goto_f

    :cond_16
    :goto_d
    if-nez v3, :cond_19

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_18

    if-nez v6, :cond_17

    if-nez v15, :cond_18

    if-ge v0, v13, :cond_18

    :cond_17
    goto :goto_e

    :cond_18
    const/16 v16, 0x1

    goto :goto_f

    :cond_19
    :goto_e
    const/16 v16, 0x1

    return v16

    :cond_1a
    const/16 v16, 0x1

    :goto_f
    if-eqz v10, :cond_1d

    return v16

    :cond_1b
    move/from16 v19, v0

    goto :goto_10

    :cond_1c
    move/from16 v17, v2

    move-object/from16 v18, v3

    :cond_1d
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o showingBottomFadingEdge()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_1

    if-ge v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method private greylist-max-o showingTopFadingEdge()Z
    .locals 3

    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->addFocusables(Ljava/util/ArrayList;II)V

    iget-boolean v0, p0, Landroid/widget/ListView;->mAppWidgetSnapScroll:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-ne v6, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    nop

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    if-ne v6, v5, :cond_4

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->getViewsToRemove(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    :cond_5
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_6
    return-void
.end method

.method public whitelist addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public whitelist addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_2
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x5

    const-string v1, "ListView"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_2
    return-void
.end method

.method public whitelist areFooterDividersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public whitelist areHeaderDividersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method greylist arrowScroll(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    throw v0
.end method

.method protected whitelist canAnimate()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected greylist-max-o dispatchDataSetObserverOnChangedInternal()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Landroid/widget/ListView;->mCachingStarted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Landroid/widget/ListView;->mCachingActive:Z

    :cond_0
    iget v8, v0, Landroid/widget/ListView;->mDividerHeight:I

    iget-object v9, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v11, v3

    if-eqz v10, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v12, v3

    if-lez v8, :cond_3

    iget-object v3, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    move v13, v3

    if-nez v13, :cond_5

    if-nez v11, :cond_5

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v27, v9

    move/from16 v26, v11

    move/from16 v29, v12

    move/from16 v33, v13

    goto/16 :goto_1e

    :cond_5
    :goto_3
    iget-object v4, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/widget/ListView;->mPaddingLeft:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/widget/ListView;->mRight:I

    iget v6, v0, Landroid/widget/ListView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    iget v14, v0, Landroid/widget/ListView;->mItemCount:I

    iget-object v15, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int v15, v14, v15

    iget-boolean v2, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    iget v1, v0, Landroid/widget/ListView;->mFirstPosition:I

    move-object/from16 v17, v10

    iget-boolean v10, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move/from16 v18, v10

    iget-object v10, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x1

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    :goto_4
    if-eqz v19, :cond_8

    move/from16 v20, v14

    iget-object v14, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v14, :cond_7

    iget-boolean v14, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v14, :cond_7

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    iput-object v14, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    :cond_7
    move-object/from16 v21, v10

    goto :goto_5

    :cond_8
    move-object/from16 v21, v10

    move/from16 v20, v14

    :goto_5
    iget-object v10, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    const/16 v22, 0x0

    move/from16 v23, v14

    iget v14, v0, Landroid/widget/ListView;->mGroupFlags:I

    move-object/from16 v24, v10

    const/16 v10, 0x22

    and-int/2addr v14, v10

    if-ne v14, v10, :cond_9

    iget-object v10, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v10, Landroid/graphics/Rect;->top:I

    iget-object v10, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v10

    goto :goto_6

    :cond_9
    move/from16 v14, v23

    :goto_6
    iget v10, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v23, v14

    iget v14, v0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v10, v14

    sub-int v10, v10, v22

    iget v14, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v10, v14

    iget-boolean v14, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v14, :cond_20

    const/4 v14, 0x0

    move/from16 v25, v14

    iget v14, v0, Landroid/widget/ListView;->mScrollY:I

    if-lez v5, :cond_b

    if-gez v14, :cond_b

    if-eqz v11, :cond_a

    move/from16 v26, v11

    const/4 v11, 0x0

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    iput v14, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v7, v9, v4}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_a
    move/from16 v26, v11

    const/4 v11, 0x0

    if-eqz v13, :cond_c

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    neg-int v11, v8

    iput v11, v4, Landroid/graphics/Rect;->top:I

    const/4 v11, -0x1

    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_7

    :cond_b
    move/from16 v26, v11

    :cond_c
    :goto_7
    const/4 v11, 0x0

    move/from16 v35, v25

    move/from16 v25, v14

    move/from16 v14, v35

    :goto_8
    if-ge v11, v5, :cond_1d

    move-object/from16 v27, v9

    add-int v9, v1, v11

    if-ge v9, v6, :cond_d

    const/16 v28, 0x1

    goto :goto_9

    :cond_d
    const/16 v28, 0x0

    :goto_9
    if-lt v9, v15, :cond_e

    const/16 v29, 0x1

    goto :goto_a

    :cond_e
    const/16 v29, 0x0

    :goto_a
    if-nez v2, :cond_f

    if-nez v28, :cond_10

    :cond_f
    if-nez v3, :cond_11

    if-nez v29, :cond_10

    goto :goto_b

    :cond_10
    move/from16 v31, v1

    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    goto/16 :goto_11

    :cond_11
    :goto_b
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBottom()I

    move-result v14

    move/from16 v31, v1

    add-int/lit8 v1, v5, -0x1

    if-ne v11, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    :goto_c
    if-eqz v13, :cond_1c

    if-ge v14, v10, :cond_1c

    if-eqz v12, :cond_14

    if-nez v1, :cond_13

    goto :goto_d

    :cond_13
    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    goto :goto_11

    :cond_14
    :goto_d
    move/from16 v32, v10

    add-int/lit8 v10, v9, 0x1

    move/from16 v33, v13

    move-object/from16 v13, v21

    invoke-interface {v13, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_1a

    if-nez v2, :cond_16

    if-nez v28, :cond_15

    if-lt v10, v6, :cond_15

    goto :goto_e

    :cond_15
    move/from16 v21, v1

    goto :goto_10

    :cond_16
    :goto_e
    if-nez v1, :cond_19

    invoke-interface {v13, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_18

    if-nez v3, :cond_17

    if-nez v29, :cond_18

    if-ge v10, v15, :cond_18

    :cond_17
    goto :goto_f

    :cond_18
    move/from16 v21, v1

    goto :goto_10

    :cond_19
    :goto_f
    iput v14, v4, Landroid/graphics/Rect;->top:I

    move/from16 v21, v1

    add-int v1, v14, v8

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    move-object/from16 v1, v24

    goto :goto_11

    :cond_1a
    move/from16 v21, v1

    :goto_10
    if-eqz v19, :cond_1b

    iput v14, v4, Landroid/graphics/Rect;->top:I

    add-int v1, v14, v8

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v24

    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_11

    :cond_1b
    move-object/from16 v1, v24

    goto :goto_11

    :cond_1c
    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move/from16 v21, v1

    move-object/from16 v1, v24

    :goto_11
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v24, v1

    move-object/from16 v21, v13

    move-object/from16 v9, v27

    move/from16 v1, v31

    move/from16 v10, v32

    move/from16 v13, v33

    goto/16 :goto_8

    :cond_1d
    move/from16 v31, v1

    move-object/from16 v27, v9

    move/from16 v32, v10

    move/from16 v33, v13

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    iget v9, v0, Landroid/widget/ListView;->mBottom:I

    iget v10, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v9, v10

    if-eqz v12, :cond_1f

    add-int v10, v31, v5

    move/from16 v11, v20

    if-ne v10, v11, :cond_1e

    if-le v9, v14, :cond_1e

    iput v14, v4, Landroid/graphics/Rect;->top:I

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v10, v17

    invoke-virtual {v0, v7, v10, v4}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_12

    :cond_1e
    move-object/from16 v10, v17

    goto :goto_12

    :cond_1f
    move-object/from16 v10, v17

    move/from16 v11, v20

    :goto_12
    move/from16 v29, v12

    goto/16 :goto_1e

    :cond_20
    move/from16 v31, v1

    move-object/from16 v27, v9

    move/from16 v32, v10

    move/from16 v26, v11

    move/from16 v33, v13

    move-object/from16 v10, v17

    move/from16 v11, v20

    move-object/from16 v13, v21

    move-object/from16 v1, v24

    iget v9, v0, Landroid/widget/ListView;->mScrollY:I

    if-lez v5, :cond_21

    if-eqz v26, :cond_21

    iput v9, v4, Landroid/graphics/Rect;->top:I

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v14, v27

    invoke-virtual {v0, v7, v14, v4}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_13

    :cond_21
    move-object/from16 v14, v27

    :goto_13
    if-eqz v26, :cond_22

    const/16 v16, 0x1

    goto :goto_14

    :cond_22
    const/16 v16, 0x0

    :goto_14
    move/from16 v20, v16

    move/from16 v21, v11

    move/from16 v11, v16

    :goto_15
    if-ge v11, v5, :cond_32

    move-object/from16 v27, v14

    add-int v14, v31, v11

    if-ge v14, v6, :cond_23

    const/16 v16, 0x1

    goto :goto_16

    :cond_23
    const/16 v16, 0x0

    :goto_16
    if-lt v14, v15, :cond_24

    const/16 v24, 0x1

    goto :goto_17

    :cond_24
    const/16 v24, 0x0

    :goto_17
    if-nez v2, :cond_26

    if-nez v16, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v34, v2

    move-object/from16 v28, v10

    move/from16 v29, v12

    move/from16 v30, v20

    goto/16 :goto_1d

    :cond_26
    :goto_18
    if-nez v3, :cond_27

    if-nez v24, :cond_25

    :cond_27
    invoke-virtual {v0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v28, v10

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v10

    if-eqz v33, :cond_30

    move/from16 v29, v12

    move/from16 v12, v23

    if-le v10, v12, :cond_2f

    move/from16 v23, v12

    move/from16 v12, v20

    if-ne v11, v12, :cond_28

    const/16 v20, 0x1

    goto :goto_19

    :cond_28
    const/16 v20, 0x0

    :goto_19
    move/from16 v30, v12

    add-int/lit8 v12, v14, -0x1

    invoke-interface {v13, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v34

    if-eqz v34, :cond_2e

    if-nez v2, :cond_2a

    if-nez v16, :cond_29

    if-lt v12, v6, :cond_29

    goto :goto_1a

    :cond_29
    move/from16 v34, v2

    goto :goto_1c

    :cond_2a
    :goto_1a
    if-nez v20, :cond_2d

    invoke-interface {v13, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v34

    if-eqz v34, :cond_2c

    if-nez v3, :cond_2b

    if-nez v24, :cond_2c

    if-ge v12, v15, :cond_2c

    :cond_2b
    goto :goto_1b

    :cond_2c
    move/from16 v34, v2

    goto :goto_1c

    :cond_2d
    :goto_1b
    move/from16 v34, v2

    sub-int v2, v10, v8

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v0, v7, v4, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1d

    :cond_2e
    move/from16 v34, v2

    :goto_1c
    if-eqz v19, :cond_31

    sub-int v2, v10, v8

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1d

    :cond_2f
    move/from16 v34, v2

    move/from16 v23, v12

    move/from16 v30, v20

    goto :goto_1d

    :cond_30
    move/from16 v34, v2

    move/from16 v29, v12

    move/from16 v30, v20

    :cond_31
    :goto_1d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v14, v27

    move-object/from16 v10, v28

    move/from16 v12, v29

    move/from16 v20, v30

    move/from16 v2, v34

    goto/16 :goto_15

    :cond_32
    move/from16 v34, v2

    move-object/from16 v28, v10

    move/from16 v29, v12

    move-object/from16 v27, v14

    move/from16 v30, v20

    if-lez v5, :cond_35

    if-lez v9, :cond_35

    if-eqz v29, :cond_33

    iget v2, v0, Landroid/widget/ListView;->mBottom:I

    iput v2, v4, Landroid/graphics/Rect;->top:I

    add-int v10, v2, v9

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v10, v28

    invoke-virtual {v0, v7, v10, v4}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1e

    :cond_33
    move-object/from16 v10, v28

    if-eqz v33, :cond_34

    move/from16 v2, v32

    iput v2, v4, Landroid/graphics/Rect;->top:I

    add-int v11, v2, v8

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v11, -0x1

    invoke-virtual {v0, v7, v4, v11}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1e

    :cond_34
    move/from16 v2, v32

    goto :goto_1e

    :cond_35
    move-object/from16 v10, v28

    move/from16 v2, v32

    :goto_1e
    iget-object v1, v0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    if-eqz v1, :cond_36

    iget-object v1, v0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->draw(Landroid/graphics/Canvas;)V

    :cond_36
    iget-boolean v1, v0, Landroid/widget/ListView;->mSemEnableFillOut:Z

    if-eqz v1, :cond_37

    iget v1, v0, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    iget v1, v0, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    int-to-float v3, v1

    iget v1, v0, Landroid/widget/ListView;->mRight:I

    int-to-float v4, v1

    iget v1, v0, Landroid/widget/ListView;->mBottom:I

    int-to-float v5, v1

    iget-object v6, v0, Landroid/widget/ListView;->mSemFillOutPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_37
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v1, :cond_38

    iget-object v1, v0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_38
    iget-object v1, v0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v1, :cond_39

    iget-object v1, v0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v1, v7}, Lcom/samsung/android/animation/SemSweepListAnimator;->draw(Landroid/graphics/Canvas;)V

    :cond_39
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget-boolean v2, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    :cond_2
    return v0
.end method

.method greylist-max-o drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method greylist-max-o drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method greylist-max-o drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "recycleOnMeasure"

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/16 v1, 0x22

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    nop

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v2

    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    nop

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    :goto_2
    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_3

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method greylist-max-o findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist findViewTraversal(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method greylist-max-o findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method greylist-max-o fullScroll(I)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    if-ltz v1, :cond_0

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_3

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v1, v3

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v3, v1, :cond_3

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_4
    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist getCheckItemIds()[J
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v3, v2, [J

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v3, v5

    move v5, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-ne v5, v2, :cond_3

    return-object v3

    :cond_3
    new-array v6, v5, [J

    invoke-static {v3, v1, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6

    :cond_4
    new-array v0, v1, [J

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public whitelist getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public whitelist getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-r getHeightForPosition(I)I
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    :cond_0
    return v0
.end method

.method public whitelist getItemsCanFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public whitelist getMaxScrollAmount()I
    .locals 2

    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist isOpaque()Z
    .locals 7

    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_8

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_5
    iget v6, p0, Landroid/widget/ListView;->mPaddingBottom:I

    :goto_2
    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v6, v5, :cond_8

    :cond_6
    return v2

    :cond_7
    :goto_3
    return v2

    :cond_8
    return v0
.end method

.method protected whitelist layoutChildren()V
    .locals 31

    move-object/from16 v7, p0

    iget-boolean v8, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    const/4 v9, 0x0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    iget-object v1, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_1

    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    :cond_1
    if-nez v8, :cond_2

    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v1, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move v10, v1

    iget v1, v7, Landroid/widget/ListView;->mBottom:I

    iget v2, v7, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    move v12, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v6, :pswitch_data_0

    iget v6, v7, Landroid/widget/ListView;->mSelectedPosition:I

    goto :goto_0

    :pswitch_0
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    if-ltz v1, :cond_4

    if-ge v1, v12, :cond_4

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    :cond_4
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    :pswitch_1
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    :goto_0
    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    if-ltz v1, :cond_5

    if-ge v1, v12, :cond_5

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    :cond_5
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v6, :cond_6

    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int v2, v6, v13

    :cond_6
    add-int v6, v1, v2

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :goto_1
    iget-boolean v1, v7, Landroid/widget/ListView;->mDataChanged:Z

    move/from16 v18, v1

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    :cond_7
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_8

    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    :cond_8
    if-nez v8, :cond_9

    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_9
    return-void

    :cond_a
    :try_start_2
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_3f

    iget v1, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    move-object/from16 v19, v5

    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_b

    const/4 v4, 0x1

    :cond_b
    if-eqz v6, :cond_e

    if-eqz v18, :cond_c

    invoke-direct {v7, v6}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v20

    if-nez v20, :cond_c

    iget-boolean v0, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_d

    :cond_c
    move-object v2, v5

    nop

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v1, v0

    :cond_d
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    move v3, v0

    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_2

    :cond_e
    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_2

    :cond_f
    move-object v0, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    if-eqz v5, :cond_13

    if-eqz v18, :cond_10

    invoke-direct {v7, v5}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v5}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_10

    iget-boolean v4, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_11

    :cond_10
    move-object v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    iget v4, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v4, :cond_11

    const/4 v3, 0x1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    :cond_12
    move-object v4, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    goto :goto_3

    :cond_13
    move-object v4, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    :goto_3
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    move v3, v1

    iget-object v1, v7, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object v2, v1

    if-eqz v18, :cond_15

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_14

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v25, v4

    add-int v4, v3, v1

    invoke-virtual {v2, v9, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v25

    const/4 v9, 0x0

    goto :goto_4

    :cond_14
    move-object/from16 v25, v4

    goto :goto_5

    :cond_15
    move-object/from16 v25, v4

    invoke-virtual {v2, v12, v3}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    iget v1, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v1, :pswitch_data_1

    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    if-nez v12, :cond_1b

    iget-boolean v1, v7, Landroid/widget/ListView;->mStackFromBottom:Z

    goto/16 :goto_6

    :pswitch_2
    move-object/from16 v1, p0

    move-object v9, v2

    move-object v2, v15

    move/from16 v26, v3

    move-object/from16 v3, v17

    move/from16 v27, v13

    move-object/from16 v13, v25

    move v4, v14

    move-object/from16 v25, v5

    move v5, v10

    move/from16 v28, v14

    move v14, v6

    move v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_9

    :pswitch_3
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    iget-boolean v1, v7, Landroid/widget/ListView;->mSemScrollingByScrollbar:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_9

    :cond_16
    iget v1, v7, Landroid/widget/ListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_9

    :pswitch_4
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_17

    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v3, :cond_17

    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v3, v1}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_17
    iget-boolean v3, v7, Landroid/widget/ListView;->mAppWidgetSnapScroll:Z

    if-eqz v3, :cond_18

    iget-boolean v3, v7, Landroid/widget/ListView;->mNeedLayoutSpecificDone:Z

    if-eqz v3, :cond_18

    iget-boolean v3, v7, Landroid/widget/ListView;->mIsLayoutSpecificDone:Z

    if-nez v3, :cond_18

    const/4 v3, 0x1

    iput-boolean v3, v7, Landroid/widget/ListView;->mIsLayoutSpecificDone:Z

    :cond_18
    move-object v1, v2

    goto/16 :goto_9

    :pswitch_5
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_9

    :pswitch_6
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {v7, v1, v10, v11}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_9

    :cond_19
    invoke-direct {v7, v10, v11}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_9

    :pswitch_7
    move-object v9, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v13, v25

    move-object/from16 v25, v5

    move v14, v6

    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_9

    :goto_6
    if-nez v1, :cond_1a

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v1, v3

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    goto :goto_9

    :cond_1a
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v7, v2, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    goto :goto_9

    :cond_1b
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v1, :cond_1d

    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_1d

    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v15, :cond_1c

    move v2, v10

    goto :goto_7

    :cond_1c
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_7
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    :cond_1d
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_1f

    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v16, :cond_1e

    move v2, v10

    goto :goto_8

    :cond_1e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_8
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    :cond_1f
    const/4 v1, 0x0

    invoke-direct {v7, v1, v10}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    :goto_9
    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    iget-object v2, v7, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    iget-object v2, v7, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    const/4 v2, -0x1

    if-eqz v1, :cond_27

    iget-boolean v3, v7, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v24, :cond_26

    :cond_20
    if-ne v1, v13, :cond_21

    if-eqz v23, :cond_21

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_22

    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_22
    const/4 v3, 0x1

    goto :goto_a

    :cond_23
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    :cond_24
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_b

    :cond_25
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    :goto_b
    goto :goto_c

    :cond_26
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v7, Landroid/widget/ListView;->mSelectedTop:I

    goto :goto_11

    :cond_27
    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_29

    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    goto :goto_d

    :cond_28
    const/4 v3, 0x0

    goto :goto_e

    :cond_29
    :goto_d
    const/4 v3, 0x1

    :goto_e
    if-eqz v3, :cond_2b

    iget v4, v7, Landroid/widget/ListView;->mMotionPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2a

    iget v5, v7, Landroid/widget/ListView;->mMotionPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    :cond_2a
    goto :goto_10

    :cond_2b
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_2c

    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_2c

    iget-boolean v4, v7, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-nez v4, :cond_2c

    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget v5, v7, Landroid/widget/ListView;->mSelectorPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_f

    :cond_2c
    iget-boolean v4, v7, Landroid/widget/ListView;->mIsHoveredByMouse:Z

    if-nez v4, :cond_2d

    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/ListView;->mSelectedTop:I

    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10

    :cond_2d
    :goto_f
    nop

    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2e

    if-eqz v23, :cond_2e

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    :cond_2e
    :goto_11
    const/4 v3, 0x0

    if-eqz v19, :cond_35

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_33

    if-eqz v21, :cond_30

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_30

    nop

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    if-eqz v0, :cond_2f

    if-eqz v5, :cond_2f

    nop

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    const/16 v2, 0x40

    invoke-virtual {v5, v6, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    nop

    goto :goto_12

    :cond_2f
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_12

    :cond_30
    const/4 v2, -0x1

    if-eq v14, v2, :cond_32

    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v6, v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_31

    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_31
    goto :goto_14

    :cond_32
    :goto_12
    goto :goto_14

    :cond_33
    const/4 v2, -0x1

    if-eq v14, v2, :cond_35

    iget v2, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v6, v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    if-eqz v22, :cond_34

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_13

    :cond_34
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_13
    invoke-virtual {v4}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_35

    if-eq v4, v5, :cond_35

    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocus()V

    if-eqz v5, :cond_35

    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_35
    :goto_14
    iget-boolean v2, v7, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v2, :cond_36

    iget-boolean v2, v7, Landroid/widget/ListView;->mSemAdapterChanged:Z

    if-eqz v2, :cond_39

    :cond_36
    iget-boolean v2, v7, Landroid/widget/ListView;->mSemEnableFillOut:Z

    if-eqz v2, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget v4, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_38

    if-ltz v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_37

    const/4 v5, -0x1

    goto :goto_15

    :cond_37
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    :goto_15
    iput v5, v7, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    goto :goto_16

    :cond_38
    const/4 v4, -0x1

    iput v4, v7, Landroid/widget/ListView;->mSemFillOutEmptyArea:I

    :cond_39
    :goto_16
    if-eqz v23, :cond_3a

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    :cond_3a
    const/4 v2, 0x0

    iput v2, v7, Landroid/widget/ListView;->mLayoutMode:I

    iput-boolean v2, v7, Landroid/widget/ListView;->mDataChanged:Z

    iput-boolean v2, v7, Landroid/widget/ListView;->mSemAdapterChanged:Z

    iget-object v2, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_3b

    iget-object v2, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    iput-object v3, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_3b
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/widget/ListView;->mNeedSync:Z

    iget v2, v7, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_3d

    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    :cond_3d
    if-nez v8, :cond_3e

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_3e
    return-void

    :cond_3f
    move/from16 v27, v13

    move/from16 v28, v14

    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v1, :cond_40

    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v1}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    :cond_40
    if-nez v8, :cond_41

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_41
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method greylist lookForSelectablePosition(IZ)I
    .locals 4

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_2

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v2, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1

    :cond_5
    :goto_3
    return v1
.end method

.method greylist-max-o lookForSelectablePositionAfter(IIZ)I
    .locals 6

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-eq v2, v1, :cond_1

    return v2

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    if-eqz p3, :cond_3

    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-le p2, p1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-gt p2, p1, :cond_5

    return v1

    :cond_3
    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1
    if-ge p2, p1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    if-lt p2, p1, :cond_5

    return v1

    :cond_5
    return p2

    :cond_6
    :goto_2
    return v1
.end method

.method final greylist-max-p measureHeightOfChildren(IIIII)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_0

    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    return v4

    :cond_0
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/widget/ListView;->mDividerHeight:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_0
    move v8, v9

    iget-object v9, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    iget-object v11, v0, Landroid/widget/ListView;->mIsScrap:[Z

    move/from16 v12, p2

    :goto_1
    if-gt v12, v8, :cond_7

    invoke-virtual {v0, v12, v11}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    move/from16 v14, p1

    invoke-direct {v0, v13, v12, v14, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    if-lez v12, :cond_2

    add-int/2addr v4, v5

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v9, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v9, v13, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v4, v15

    if-lt v4, v1, :cond_5

    if-ltz v2, :cond_4

    if-le v12, v2, :cond_4

    if-lez v6, :cond_4

    if-eq v4, v1, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    return v7

    :cond_5
    if-ltz v2, :cond_6

    if-lt v12, v2, :cond_6

    move v6, v4

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    move/from16 v14, p1

    return v4
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mAppWidgetInnerFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mClickableViewStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    :cond_1
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget v3, p0, Landroid/widget/ListView;->mScrollX:I

    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    :cond_0
    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const v4, 0x7fffffff

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    add-int v8, v6, v7

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v8, v3}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v3, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    if-ge v9, v4, :cond_2

    move v4, v9

    move v1, v7

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-ltz v1, :cond_4

    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :goto_2
    if-eqz p1, :cond_5

    iget-object v3, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    if-eqz v3, :cond_5

    new-instance v3, Landroid/widget/ListView$2;

    invoke-direct {v3, p0}, Landroid/widget/ListView$2;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x1

    move v2, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-lez v0, :cond_0

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSweepAnimatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemSweepListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 15

    move-object v6, p0

    move/from16 v7, p1

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v5, :cond_0

    move v5, v10

    goto :goto_0

    :cond_0
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_0
    iput v5, v6, Landroid/widget/ListView;->mItemCount:I

    iget v5, v6, Landroid/widget/ListView;->mItemCount:I

    if-lez v5, :cond_2

    if-eqz v8, :cond_1

    if-nez v9, :cond_2

    :cond_1
    iget-object v5, v6, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v10, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v5, v10, v7, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v4, v10}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    iget v11, v11, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v11, -0x1

    invoke-virtual {v10, v5, v11}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_2
    move v10, v2

    move v11, v3

    move v12, v4

    if-nez v8, :cond_3

    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v2, v3

    move v13, v2

    goto :goto_1

    :cond_3
    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    or-int/2addr v2, v0

    move v13, v2

    :goto_1
    if-nez v9, :cond_4

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    add-int/2addr v0, v11

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v1, v0, v2

    move v14, v1

    goto :goto_2

    :cond_4
    move v14, v1

    :goto_2
    const/high16 v0, -0x80000000

    if-ne v9, v0, :cond_5

    const/4 v3, -0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v14

    :cond_5
    invoke-virtual {p0, v13, v14}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    iput v7, v6, Landroid/widget/ListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v3, p2, v3

    sub-int v3, v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector-IA;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSweepAnimatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemSweepListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o pageScroll(I)Z
    .locals 6

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x82

    if-ne p1, v0, :cond_5

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v2

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x1

    :goto_0
    if-ltz v0, :cond_4

    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v0, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    if-ltz v4, :cond_4

    const/4 v1, 0x4

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Landroid/widget/ListView;->mSpecificTop:I

    if-eqz v3, :cond_1

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v1, v5

    if-le v4, v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_2

    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->semShowGoToTOP()V

    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_3
    return v2

    :cond_4
    return v1

    :cond_5
    return v1
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ltz v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method blacklist performLongPress(Landroid/view/View;IJ)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->isSwiping()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist removeFooterView(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeHeaderView(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removePendingCallbacks()V
    .locals 0

    invoke-super {p0}, Landroid/widget/AbsListView;->removePendingCallbacks()V

    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v2

    add-int v3, v2, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v5, :cond_0

    if-le v0, v4, :cond_1

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_2

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_3

    :cond_2
    sub-int/2addr v3, v4

    :cond_3
    const/4 v7, 0x0

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_6

    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-le v9, v2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_4

    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_0

    :cond_4
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    :goto_0
    sub-int v9, v6, v3

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_5
    goto :goto_2

    :cond_6
    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-ge v9, v2, :cond_5

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v3, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_7

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_1

    :cond_7
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    :goto_1
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v11, v9, v2

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_2
    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move v8, v10

    :goto_3
    if-eqz v8, :cond_9

    neg-int v9, v7

    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/ListView;->mSelectedTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_9
    return v8
.end method

.method greylist-max-o resetList()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    return-void
.end method

.method public blacklist semAllowDeferNotifyAfterRemoteViewsAdapterSet(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semAllowDeferNotifyAfterRemoteViewsAdapterSet(Z)V

    return-void
.end method

.method public greylist semEnableSelectZeroOnLastFocusTab(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/ListView;->mSelectZeroPositionOnKeyTab:Z

    return-void
.end method

.method public blacklist semGetAppWidgetImmersiveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListView;->mAppWidgetImmersiveEnalbed:Z

    return v0
.end method

.method public blacklist semHandleGenericMotionEvent(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->pointerScroll(I)Z

    move-result v0

    return v0
.end method

.method public blacklist semRequestFocus()Z
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0}, Landroid/widget/AbsListView;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist semSetAppWidgetEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetEnabled(Z)V

    return-void
.end method

.method public blacklist semSetAppWidgetGetCurrentPosition(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetGetCurrentPosition(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist semSetAppWidgetGetFirstPosition(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetGetFirstPosition(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist semSetAppWidgetImmersiveEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetImmersiveEnabled(Z)V

    return-void
.end method

.method public blacklist semSetAppWidgetIndicator(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetIndicator(Z)V

    return-void
.end method

.method public blacklist semSetAppWidgetIndicatorBottomPadding(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetIndicatorBottomPadding(I)V

    return-void
.end method

.method public blacklist semSetAppWidgetIndicatorMarginHorizontal(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetIndicatorMarginHorizontal(I)V

    return-void
.end method

.method public blacklist semSetAppWidgetIndicatorWhere(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetIndicatorWhere(I)V

    return-void
.end method

.method public blacklist semSetAppWidgetInnerFocus(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetInnerFocus(Z)V

    return-void
.end method

.method public blacklist semSetAppWidgetNeedLayoutSpecificDone(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetNeedLayoutSpecificDone(Z)V

    return-void
.end method

.method public blacklist semSetAppWidgetSnapScroll(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetSnapScroll(Z)V

    return-void
.end method

.method public blacklist semSetFastScrollEnabledForAppWidget(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledForAppWidget(Z)V

    return-void
.end method

.method public greylist semSetGoToTopEnabledForAppWidget(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetGoToTopEnabledForAppWidget(Z)V

    return-void
.end method

.method public greylist semSetGoToTopOffsetForAppWidget(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetGoToTopOffsetForAppWidget(I)V

    return-void
.end method

.method public blacklist semSetScrollBarBottomPadding(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetScrollBarBottomPadding(I)V

    return-void
.end method

.method public blacklist semSetScrollBarTopPadding(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetScrollBarTopPadding(I)V

    return-void
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    iput v0, p0, Landroid/widget/ListView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    :cond_4
    goto :goto_3

    :cond_5
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->semGetRoundedCorners()I

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Landroid/widget/ListView;->sIsSamsungBasicInteraction:Z

    iput-boolean v0, p0, Landroid/widget/ListView;->mSemEnableFillOut:Z

    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method public blacklist setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    return-void
.end method

.method public whitelist setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public whitelist setDividerHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public blacklist setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChildrenDrawingOrderEnabled(Z)V

    iget-object v0, p0, Landroid/widget/ListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    new-instance v1, Landroid/widget/ListView$1;

    invoke-direct {v1, p0}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    return-void
.end method

.method public whitelist setFooterDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public whitelist setHeaderDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public whitelist setItemsCanFocus(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public blacklist setOnScrollOffsetListener(Landroid/widget/AbsListView$OnScrollOffsetListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setOnScrollOffsetListener(Landroid/widget/AbsListView$OnScrollOffsetListener;)V

    return-void
.end method

.method public whitelist setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public whitelist setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public whitelist setSelectionAfterHeaderView()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    :goto_0
    return-void
.end method

.method greylist setSelectionInt(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    :cond_3
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method greylist-max-r trackMotionScroll(II)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    return v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected greylist-max-o wrapHeaderListAdapterInternal()V
    .locals 3

    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method
