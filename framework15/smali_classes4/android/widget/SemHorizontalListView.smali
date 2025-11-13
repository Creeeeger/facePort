.class public Landroid/widget/SemHorizontalListView;
.super Landroid/widget/SemHorizontalAbsListView;
.source "SemHorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;,
        Landroid/widget/SemHorizontalListView$FixedViewInfo;,
        Landroid/widget/SemHorizontalListView$FocusSelector;,
        Landroid/widget/SemHorizontalListView$ItemInfoTag;
    }
.end annotation


# static fields
.field private static final blacklist BITS_PER_LONG:I = 0x40

.field private static final blacklist MAX_SCROLL_FACTOR:F = 0.33f

.field private static final blacklist MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final blacklist NO_POSITION:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemHorizontalListView"

.field private static final blacklist XML_FIXED_SIZE_ITEMS_ATTRIBUTE:Ljava/lang/String; = "fixed_size_items"

.field private static final blacklist XML_SEC_ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.samsung.com.samsung.android"


# instance fields
.field private blacklist mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field private blacklist mAreAllItemsSelectable:Z

.field private final blacklist mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

.field blacklist mDivider:Landroid/graphics/drawable/Drawable;

.field blacklist mDividerHeight:I

.field private blacklist mDividerIsOpaque:Z

.field private blacklist mDividerPaint:Landroid/graphics/Paint;

.field private blacklist mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

.field private final blacklist mFixedSizeItems:Z

.field private blacklist mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

.field private blacklist mFooterDividersEnabled:Z

.field private blacklist mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHeaderDividersEnabled:Z

.field private blacklist mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsCacheColorOpaque:Z

.field blacklist mIsFolderTypeFeature:Z

.field private blacklist mItemsCanFocus:Z

.field blacklist mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field blacklist mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDndListAnimator(Landroid/widget/SemHorizontalListView;)Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    new-instance v2, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;-><init>(Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult-IA;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->setDividerHeight(I)V

    :cond_4
    const/4 v8, 0x3

    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    const/4 v8, 0x4

    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_5

    const-string v0, "http://schemas.android.samsung.com.samsung.android"

    const-string v8, "fixed_size_items"

    invoke-interface {p2, v0, v8, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    :goto_0
    return-void
.end method

.method private blacklist addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 11

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v10, v1, v2

    if-eqz v9, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v9

    move v3, v0

    move v4, v10

    invoke-direct/range {v1 .. v8}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    return-object v9
.end method

.method private blacklist addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 11

    add-int/lit8 v8, p2, 0x1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v0, v1, v2

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v0

    :goto_0
    if-eqz v9, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    return-object v9
.end method

.method private blacklist adjustViewsLeftOrRight()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    :goto_0
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    :cond_2
    :goto_1
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    if-lez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    if-gez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    :goto_2
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_7

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_6
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    :cond_7
    :goto_3
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_8

    if-gez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    if-lez v2, :cond_9

    const/4 v2, 0x0

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    :cond_a
    return-void
.end method

.method private blacklist amountToScroll(II)I
    .locals 11

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    const/16 v3, 0x42

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_b

    add-int/lit8 v3, v2, -0x1

    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eq p2, v4, :cond_1

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v6

    :cond_1
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    :goto_0
    if-gez v3, :cond_3

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-gt v2, v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move v8, v0

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_4

    if-lez v6, :cond_5

    goto :goto_2

    :cond_4
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_5

    :goto_2
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    if-gt v9, v8, :cond_6

    return v5

    :cond_6
    if-eq p2, v4, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v8, v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_7

    return v5

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v8

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_8

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v9, :cond_a

    goto :goto_3

    :cond_8
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ne v9, v10, :cond_a

    :goto_3
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v2, -0x1

    :goto_4
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5

    :cond_b
    const/4 v3, 0x0

    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_c

    add-int/lit8 v3, v2, -0x1

    :cond_c
    if-eq p2, v4, :cond_d

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v6

    :cond_d
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_e

    :goto_5
    if-gt v2, v3, :cond_f

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    if-gez v3, :cond_f

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v6

    goto :goto_6

    :cond_f
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v3

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move v8, v1

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_10

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_11

    goto :goto_7

    :cond_10
    if-lez v6, :cond_11

    :goto_7
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    :cond_11
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    if-lt v9, v8, :cond_12

    return v5

    :cond_12
    if-eq p2, v4, :cond_13

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v4, v9, :cond_13

    return v5

    :cond_13
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v8, v4

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_14

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ne v9, v10, :cond_16

    goto :goto_8

    :cond_14
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v9, :cond_16

    :goto_8
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_15

    add-int/lit8 v5, v2, -0x1

    :cond_15
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_16
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private blacklist amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_3

    goto :goto_0

    :cond_0
    if-lez p3, :cond_3

    :goto_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_2

    if-lez p3, :cond_3

    goto :goto_1

    :cond_2
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_3

    :goto_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    :goto_2
    return v0
.end method

.method private blacklist arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x42

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

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    add-int/2addr v4, v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    nop

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v3, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6

    :cond_4
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v4, v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    sub-int/2addr v4, v5

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v4, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v4

    :goto_5
    nop

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v3, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_6
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    :goto_7
    const/4 v3, 0x0

    if-eqz v2, :cond_c

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    if-eq v5, v6, :cond_a

    if-ne p1, v1, :cond_8

    if-lt v5, v4, :cond_9

    :cond_8
    const/16 v1, 0x11

    if-ne p1, v1, :cond_a

    if-le v5, v4, :cond_a

    :cond_9
    return-object v3

    :cond_a
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/SemHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v5

    if-ge v1, v5, :cond_b

    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v3

    :cond_b
    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_c

    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v3

    :cond_c
    return-object v3
.end method

.method private blacklist arrowScrollImpl(I)Z
    .locals 11

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-direct {p0, v0, v2, p1}, Landroid/widget/SemHorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/widget/SemHorizontalListView;->amountToScroll(II)I

    move-result v4

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    :cond_2
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_6

    if-eqz v5, :cond_4

    move v9, v6

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    invoke-direct {p0, v0, p1, v3, v9}, Landroid/widget/SemHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    move v2, v3

    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    :cond_5
    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    :cond_6
    if-lez v4, :cond_8

    const/16 v9, 0x11

    if-ne p1, v9, :cond_7

    move v9, v4

    goto :goto_3

    :cond_7
    neg-int v9, v4

    :goto_3
    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    const/4 v7, 0x1

    :cond_8
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_a

    if-nez v5, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v10

    if-lez v10, :cond_a

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    :cond_a
    if-ne v3, v8, :cond_b

    if-eqz v0, :cond_b

    invoke-direct {p0, v0, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v0, 0x0

    iget-object v9, p0, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->hideSelector()V

    iput v8, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    :cond_b
    if-eqz v7, :cond_e

    if-eqz v0, :cond_c

    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    :cond_c
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_d
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    return v6

    :cond_e
    return v1
.end method

.method private blacklist clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
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

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1a

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    const/4 v4, 0x2

    const/16 v5, 0x42

    const/16 v6, 0x11

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_19

    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v3

    :goto_1
    move v0, v4

    goto/16 :goto_19

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v3

    :goto_3
    move v0, v4

    goto/16 :goto_19

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v1

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v3

    :goto_5
    move v0, v4

    goto/16 :goto_19

    :cond_8
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    move v4, v1

    goto :goto_7

    :cond_a
    :goto_6
    move v4, v3

    :goto_7
    move v0, v4

    goto/16 :goto_19

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    move v4, v1

    goto :goto_9

    :cond_c
    :goto_8
    move v4, v3

    :goto_9
    move v0, v4

    goto/16 :goto_19

    :cond_d
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_a

    :cond_e
    move v4, v1

    goto :goto_b

    :cond_f
    :goto_a
    move v4, v3

    :goto_b
    move v0, v4

    goto/16 :goto_19

    :sswitch_4
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_22

    :cond_10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_c

    :cond_11
    move v4, v1

    goto :goto_d

    :cond_12
    :goto_c
    move v4, v3

    :goto_d
    move v0, v4

    goto :goto_10

    :cond_13
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_e

    :cond_14
    move v4, v1

    goto :goto_f

    :cond_15
    :goto_e
    move v4, v3

    :goto_f
    move v0, v4

    :cond_16
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_19

    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->keyPressed()V

    const/4 v0, 0x1

    goto/16 :goto_19

    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_13

    :cond_17
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_11

    :cond_18
    move v4, v1

    goto :goto_12

    :cond_19
    :goto_11
    move v4, v3

    :goto_12
    move v0, v4

    goto/16 :goto_19

    :cond_1a
    :goto_13
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_22

    :goto_14
    add-int/lit8 v4, p2, -0x1

    if-lez p2, :cond_1f

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    move p2, v4

    goto :goto_14

    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_17

    :cond_1b
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_15

    :cond_1c
    move v4, v1

    goto :goto_16

    :cond_1d
    :goto_15
    move v4, v3

    :goto_16
    move v0, v4

    goto :goto_19

    :cond_1e
    :goto_17
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_22

    :goto_18
    add-int/lit8 v4, p2, -0x1

    if-lez p2, :cond_1f

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    const/4 v0, 0x1

    move p2, v4

    goto :goto_18

    :cond_1f
    move p2, v4

    goto :goto_19

    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_20
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    const/16 v4, 0x82

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v0

    goto :goto_19

    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    const/16 v4, 0x21

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v0

    :cond_22
    :goto_19
    if-eqz v0, :cond_23

    return v3

    :cond_23
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_24

    return v3

    :cond_24
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_25
    :goto_1a
    return v1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_8
        0x15 -> :sswitch_7
        0x16 -> :sswitch_6
        0x17 -> :sswitch_5
        0x3e -> :sswitch_4
        0x42 -> :sswitch_5
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
        0xa0 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist correctTooHigh(I)V
    .locals 10

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int v4, v3, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lez v4, :cond_2

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_2

    :cond_0
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_2

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_2
    return-void
.end method

.method private blacklist correctTooHighRTL(I)V
    .locals 11

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v5, v2, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-lez v5, :cond_2

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v8, :cond_0

    if-le v7, v4, :cond_2

    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_1

    sub-int v8, v7, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_1
    neg-int v8, v5

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v8, :cond_2

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_2
    return-void
.end method

.method private blacklist correctTooLow(I)V
    .locals 11

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int v4, v1, v2

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lez v4, :cond_3

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-le v6, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_1

    :cond_1
    :goto_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist correctTooLowRTL(I)V
    .locals 11

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    sub-int v4, v3, v1

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lez v4, :cond_3

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_0

    goto :goto_0

    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_1

    :cond_1
    :goto_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v6

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist distanceToView(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist fillFromLeft(I)Landroid/view/View;
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist fillFromMiddle(II)Landroid/view/View;
    .locals 8

    sub-int v0, p2, p1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v7

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    iput v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-gt v2, v0, :cond_0

    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    invoke-direct {p0, v1, v7}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    :goto_0
    return-object v1
.end method

.method private blacklist fillFromRight(I)Landroid/view/View;
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist fillFromSelection(III)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-direct {p0, p2, v0, v7}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    invoke-direct {p0, p3, v0, v7}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v9

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v9, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    neg-int v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v8, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v8, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v9, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-direct {p0, v1, v7}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_2

    :cond_3
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    :goto_2
    return-object v1
.end method

.method private blacklist fillLeft(II)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-le p2, v1, :cond_4

    if-ltz p1, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v3, v4

    if-eqz v8, :cond_2

    move-object p2, v2

    move-object v0, p2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v3

    :cond_3
    :goto_2
    nop

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private blacklist fillLeftAndRight(Landroid/view/View;I)V
    .locals 3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private blacklist fillLeftRTL(II)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-le p2, v1, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge p1, v3, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v3, v4

    if-eqz v8, :cond_2

    move-object p2, v2

    move-object v0, p2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v3

    :cond_3
    :goto_2
    nop

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private blacklist fillRight(II)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ge p2, v1, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge p1, v3, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v3, v4

    if-eqz v8, :cond_2

    move-object p2, v2

    move-object v0, p2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v3

    :cond_3
    :goto_2
    nop

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private blacklist fillRightRTL(II)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge p2, v1, :cond_4

    if-ltz p1, :cond_4

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v9, v3

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v4, v5

    if-eqz v9, :cond_2

    move-object p2, v3

    move-object v0, p2

    move p2, v4

    goto :goto_2

    :cond_2
    move p2, v4

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private blacklist fillSpecific(II)Landroid/view/View;
    .locals 7

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    :cond_1
    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

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

.method private blacklist fillSpecificRTL(II)Landroid/view/View;
    .locals 7

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    :cond_1
    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    if-eqz v4, :cond_5

    return-object v4

    :cond_5
    return-object v3
.end method

.method private blacklist getArrowScrollPreviewLength()I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private blacklist getChildCountAndOrder(Landroid/view/View;[BI)J
    .locals 7

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, p3, :cond_1

    aget-byte v2, p2, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    :cond_1
    aget-byte v2, p2, v5

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p2, v5

    return-wide v0

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-ne v6, p3, :cond_3

    aget-byte v6, p2, v5

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    :cond_3
    aget-byte v3, p2, v5

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, v5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v5

    or-long/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method private blacklist getChildHeightSpec(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    :cond_0
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    return v1
.end method

.method private blacklist getChildWidthSpec(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_0
    return v2
.end method

.method private blacklist getLeftSelectionPixel(III)I
    .locals 2

    move v0, p1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    :goto_0
    add-int/2addr v0, p2

    :cond_1
    return v0
.end method

.method private blacklist getRightSelectionPixel(III)I
    .locals 2

    move v0, p1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_0

    if-lez p3, :cond_1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_1

    :goto_0
    sub-int/2addr v0, p2

    :cond_1
    return v0
.end method

.method private blacklist handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v2, p3, v2

    const/16 v3, 0x11

    if-ne p2, v3, :cond_0

    move v3, v2

    move v4, v1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v6, p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    move v4, v2

    move-object v5, p1

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

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

    invoke-direct {p0, v5, v3, v7}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    :cond_2
    if-eqz v6, :cond_4

    if-nez p4, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v6, v4, v7}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist handleVerticalFocusWithinListItem(I)Z
    .locals 7

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v3, v4, :cond_2

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->playSoundEffect(I)V

    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v5, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    return v2

    :cond_4
    return v2
.end method

.method private blacklist isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v4, v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v6, v6, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
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

    invoke-direct {p0, v2, p2}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist lookForSelectablePositionOnScreen(I)I
    .locals 8

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    const/16 v1, 0x42

    const/4 v2, -0x1

    if-ne p1, v1, :cond_8

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    nop

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    return v2

    :cond_1
    if-ge v1, v0, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_5

    move v5, v1

    :goto_1
    if-lt v5, v0, :cond_4

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    return v5

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    goto :goto_3

    :cond_5
    move v5, v1

    :goto_2
    if-gt v5, v3, :cond_7

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_6

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    return v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v4, v2, :cond_9

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_4
    nop

    if-ltz v4, :cond_11

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_a

    goto :goto_8

    :cond_a
    if-le v4, v1, :cond_b

    move v4, v1

    :cond_b
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_e

    move v6, v4

    :goto_5
    if-gt v6, v3, :cond_d

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c

    sub-int v7, v6, v0

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_c

    return v6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    goto :goto_7

    :cond_e
    move v6, v4

    :goto_6
    if-lt v6, v0, :cond_10

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_f

    sub-int v7, v6, v0

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_f

    return v6

    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_10
    :goto_7
    return v2

    :cond_11
    :goto_8
    return v2
.end method

.method private blacklist makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

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

    invoke-direct/range {v1 .. v8}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    return-object v0
.end method

.method private blacklist measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->measureItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v2, p2, 0x1

    :goto_0
    if-ge v2, p3, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist measureItem(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    :cond_0
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private blacklist measureScrapChild(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->width:I

    if-lez v2, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private blacklist moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 14

    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v8

    iget v9, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-direct {p0, v7, v8, v9}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v10

    invoke-direct {p0, v7, v8, v9}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v11

    if-lez p3, :cond_2

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v12

    iget v13, v6, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v2, v0, v13

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v11, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v11

    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    neg-int v5, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    iget-boolean v1, v6, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_0

    :cond_1
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    :goto_0
    goto/16 :goto_2

    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v10, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v10, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v2, v11, v2

    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    invoke-direct {p0, v0, v9}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    move-object v12, p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, v9

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    if-ge v12, v7, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/lit8 v2, v7, 0x14

    if-ge v1, v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_6
    invoke-direct {p0, v0, v9}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    move-object v12, p1

    :goto_2
    return-object v0
.end method

.method private blacklist needToMeasureChild(Landroid/view/View;ZZ)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    return v2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    if-eqz v5, :cond_6

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalListView$ItemInfoTag;-><init>(Landroid/widget/SemHorizontalListView;)V

    move-object v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    instance-of v7, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    if-eqz v7, :cond_5

    move-object v7, v6

    check-cast v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v8

    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v9

    new-array v2, v2, [B

    aput-byte v3, v2, v3

    const/16 v10, 0x8

    invoke-direct {p0, v1, v2, v10}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v10

    aget-byte v3, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    if-ne v8, v13, :cond_4

    iget v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    if-ne v9, v13, :cond_4

    iget-wide v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    cmp-long v13, v10, v13

    if-nez v13, :cond_4

    if-lez v3, :cond_4

    const/16 v13, 0x40

    if-gt v3, v13, :cond_4

    iget v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    if-ne v3, v13, :cond_4

    iget-object v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v13

    if-nez v13, :cond_4

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mLastScrollState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    iput v8, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    iput v9, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    iput-wide v10, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    iput v3, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    iget-object v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v12}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->forceLayout()V

    const/4 v4, 0x1

    :goto_2
    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->forceLayout()V

    const/4 v4, 0x1

    :cond_6
    :goto_3
    return v4
.end method

.method private final blacklist nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x42

    if-ne p3, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v4, v3, :cond_3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_1

    if-eq p2, v1, :cond_0

    if-gt p2, v4, :cond_0

    add-int/lit8 v5, p2, -0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    goto :goto_2

    :cond_1
    if-eq p2, v1, :cond_2

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_2

    add-int/lit8 v5, p2, 0x1

    goto :goto_1

    :cond_2
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :goto_1
    nop

    :goto_2
    nop

    goto :goto_5

    :cond_3
    return v1

    :cond_4
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v4, v3, :cond_b

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_6

    if-eq p2, v1, :cond_5

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_5

    add-int/lit8 v5, p2, 0x1

    goto :goto_3

    :cond_5
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :goto_3
    nop

    goto :goto_4

    :cond_6
    if-eq p2, v1, :cond_7

    if-gt p2, v4, :cond_7

    add-int/lit8 v5, p2, -0x1

    goto :goto_4

    :cond_7
    move v5, v4

    :goto_4
    nop

    :goto_5
    if-ltz v5, :cond_a

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v5, v3, :cond_8

    goto :goto_7

    :cond_8
    if-ne p3, v2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v5, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    :cond_a
    :goto_7
    return v1

    :cond_b
    return v1
.end method

.method private blacklist positionOfNewFocus(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

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

.method private blacklist relayoutMeasuredItem(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int v3, v2, v0

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v5, v4, v1

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private blacklist removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
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

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

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

.method private blacklist scrollListItemsBy(I)V
    .locals 10

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    const/4 v3, 0x0

    if-gez p1, :cond_c

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_3

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_0

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_1

    return-void

    :cond_1
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_3

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_3

    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_5

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_5
    if-nez v6, :cond_6

    return-void

    :cond_6
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v7, v1, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v8, v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, v3

    invoke-virtual {v2, v6, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_7
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    :cond_8
    goto :goto_4

    :cond_9
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v7, v1, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v8, v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v2, v6, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_a
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_3

    :cond_b
    :goto_4
    goto/16 :goto_a

    :cond_c
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_d

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    :cond_d
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_5
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_f

    :goto_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_11

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_11

    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_e

    return-void

    :cond_e
    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_11

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_11

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_10

    return-void

    :cond_10
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_7

    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    :cond_12
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v8, :cond_14

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :goto_8
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v0, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v9, v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_13

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v2, v7, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_13
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_8

    :cond_14
    :goto_9
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v0, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v8, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_15

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_15
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_9

    :cond_16
    :goto_a
    return-void
.end method

.method private blacklist setupChild(Landroid/view/View;IIZIZZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    const-string/jumbo v5, "setupListItem"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->shouldShowSelector()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v5

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v10

    if-eq v9, v10, :cond_1

    move v10, v5

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    if-lez v11, :cond_2

    const/4 v12, 0x3

    if-ge v11, v12, :cond_2

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    if-ne v12, v2, :cond_2

    move v12, v5

    goto :goto_2

    :cond_2
    move v12, v8

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eq v12, v13, :cond_3

    move v13, v5

    goto :goto_3

    :cond_3
    move v13, v8

    :goto_3
    invoke-direct {v0, v1, v10, v4}, Landroid/widget/SemHorizontalListView;->needToMeasureChild(Landroid/view/View;ZZ)Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-nez v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :cond_4
    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    iput v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    if-eqz v4, :cond_5

    iget-boolean v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    if-eqz v7, :cond_6

    :cond_5
    iget-boolean v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v6, -0x2

    if-eqz v7, :cond_a

    iget v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    if-ne v7, v6, :cond_a

    :cond_6
    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_8

    if-nez p4, :cond_7

    const/4 v6, -0x1

    goto :goto_4

    :cond_7
    move v6, v8

    :goto_4
    invoke-virtual {v0, v1, v6, v15}, Landroid/widget/SemHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_8
    if-eqz p4, :cond_9

    const/4 v6, -0x1

    goto :goto_5

    :cond_9
    move v6, v8

    :goto_5
    invoke-virtual {v0, v1, v6, v15}, Landroid/widget/SemHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_a
    iput-boolean v8, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    iget v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    if-ne v7, v6, :cond_b

    iput-boolean v5, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_b
    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_d

    if-nez p4, :cond_c

    const/4 v6, -0x1

    goto :goto_6

    :cond_c
    move v6, v8

    :goto_6
    invoke-virtual {v0, v1, v6, v15, v5}, Landroid/widget/SemHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_8

    :cond_d
    if-eqz p4, :cond_e

    const/4 v6, -0x1

    goto :goto_7

    :cond_e
    move v6, v8

    :goto_7
    invoke-virtual {v0, v1, v6, v15, v5}, Landroid/widget/SemHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :goto_8
    if-eqz v10, :cond_f

    invoke-virtual {v1, v9}, Landroid/view/View;->setSelected(Z)V

    if-eqz v9, :cond_f

    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v6, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    :cond_f
    if-eqz v13, :cond_10

    invoke-virtual {v1, v12}, Landroid/view/View;->setPressed(Z)V

    :cond_10
    iget v6, v0, Landroid/widget/SemHorizontalListView;->mChoiceMode:I

    if-eqz v6, :cond_12

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_12

    instance-of v6, v1, Landroid/widget/Checkable;

    if-eqz v6, :cond_11

    move-object v6, v1

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_9

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_12

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setActivated(Z)V

    :cond_12
    :goto_9
    if-eqz v14, :cond_14

    iget v6, v0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v7, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v5

    iget v5, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->height:I

    invoke-static {v6, v7, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    iget v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->width:I

    if-lez v6, :cond_13

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_a

    :cond_13
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_a
    invoke-virtual {v1, v7, v5}, Landroid/view/View;->measure(II)V

    goto :goto_b

    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-boolean v7, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_18

    if-eqz p4, :cond_15

    add-int v7, p3, v5

    goto :goto_c

    :cond_15
    move/from16 v7, p3

    :goto_c
    if-eqz p4, :cond_16

    move/from16 v8, p3

    goto :goto_d

    :cond_16
    sub-int v8, p3, v5

    :goto_d
    if-eqz v14, :cond_17

    move/from16 v18, v9

    add-int v9, v3, v6

    invoke-virtual {v1, v8, v3, v7, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_f

    :cond_17
    move/from16 v18, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_f

    :cond_18
    move/from16 v18, v9

    if-eqz p4, :cond_19

    move/from16 v7, p3

    goto :goto_e

    :cond_19
    sub-int v7, p3, v5

    :goto_e
    move v8, v7

    add-int v7, v8, v5

    if-eqz v14, :cond_1a

    add-int v9, v3, v6

    invoke-virtual {v1, v8, v3, v7, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_f

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_f
    iget-boolean v9, v0, Landroid/widget/SemHorizontalListView;->mCachingStarted:Z

    if-eqz v9, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v9

    if-nez v9, :cond_1b

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_1b
    if-eqz v4, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v9, v2, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_1c
    const-wide/16 v16, 0x8

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private blacklist shouldAdjustWidthForDivider(I)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

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

    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iget-object v12, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

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
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

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

    iget-object v2, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v3

    iget-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

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

.method private blacklist showingLeftFadingEdge()Z
    .locals 7

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v5, v4

    if-lt v3, v5, :cond_1

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v5, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    :cond_4
    :goto_1
    return v4
.end method

.method private blacklist showingRightFadingEdge()Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v5, :cond_1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v6

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_4

    if-ge v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v6

    :cond_4
    :goto_1
    return v3
.end method


# virtual methods
.method public blacklist addFooterView(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public blacklist addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method public blacklist addHeaderView(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public blacklist addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method public blacklist areFooterDividersEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public blacklist areHeaderDividersEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method blacklist arrowScroll(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    throw v0
.end method

.method protected whitelist canAnimate()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/SemHorizontalListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    :cond_0
    iget v2, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v5, :cond_2

    move v8, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-lez v2, :cond_3

    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_5

    if-nez v7, :cond_5

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v27, v4

    move-object v6, v5

    move/from16 v31, v7

    move/from16 v25, v8

    move/from16 v33, v9

    goto/16 :goto_1e

    :cond_5
    :goto_3
    iget-object v10, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v11, v0, Landroid/widget/SemHorizontalListView;->mPaddingTop:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/widget/SemHorizontalListView;->mBottom:I

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mTop:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v11

    iget-object v12, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    sub-int/2addr v14, v3

    iget-boolean v15, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    iget-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    iget v6, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move-object/from16 v17, v5

    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    move/from16 v18, v5

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x1

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    :goto_4
    if-eqz v19, :cond_8

    move/from16 v20, v13

    iget-object v13, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v13, :cond_7

    iget-boolean v13, v0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v13, :cond_7

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getCacheColorHint()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    :cond_7
    move-object/from16 v21, v5

    goto :goto_5

    :cond_8
    move-object/from16 v21, v5

    move/from16 v20, v13

    :goto_5
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    const/16 v22, 0x0

    move/from16 v23, v13

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    move-object/from16 v24, v5

    const/16 v5, 0x22

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_9

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move/from16 v22, v5

    goto :goto_6

    :cond_9
    move/from16 v13, v23

    :goto_6
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    move/from16 v23, v13

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v5, v13

    sub-int v5, v5, v22

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    add-int/2addr v5, v13

    iget-boolean v13, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    move/from16 v25, v8

    if-nez v13, :cond_20

    const/4 v13, 0x0

    iget v8, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    if-lez v11, :cond_b

    if-gez v8, :cond_b

    if-eqz v7, :cond_a

    move/from16 v27, v13

    const/4 v13, 0x0

    iput v13, v10, Landroid/graphics/Rect;->right:I

    iput v8, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_a
    move/from16 v27, v13

    const/4 v13, 0x0

    if-eqz v9, :cond_c

    iput v13, v10, Landroid/graphics/Rect;->right:I

    neg-int v13, v2

    iput v13, v10, Landroid/graphics/Rect;->left:I

    const/4 v13, -0x1

    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_7

    :cond_b
    move/from16 v27, v13

    :cond_c
    :goto_7
    const/4 v13, 0x0

    move/from16 v26, v8

    move/from16 v8, v27

    :goto_8
    if-ge v13, v11, :cond_1d

    move-object/from16 v27, v4

    add-int v4, v6, v13

    if-ge v4, v12, :cond_d

    const/16 v28, 0x1

    goto :goto_9

    :cond_d
    const/16 v28, 0x0

    :goto_9
    if-lt v4, v14, :cond_e

    const/16 v29, 0x1

    goto :goto_a

    :cond_e
    const/16 v29, 0x0

    :goto_a
    if-nez v15, :cond_f

    if-nez v28, :cond_10

    :cond_f
    if-nez v3, :cond_11

    if-nez v29, :cond_10

    goto :goto_b

    :cond_10
    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    goto/16 :goto_11

    :cond_11
    :goto_b
    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v8

    move/from16 v31, v7

    add-int/lit8 v7, v11, -0x1

    if-ne v13, v7, :cond_12

    const/4 v7, 0x1

    goto :goto_c

    :cond_12
    const/4 v7, 0x0

    :goto_c
    if-eqz v9, :cond_1c

    if-ge v8, v5, :cond_1c

    if-eqz v25, :cond_14

    if-nez v7, :cond_13

    goto :goto_d

    :cond_13
    move/from16 v32, v5

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    goto :goto_11

    :cond_14
    :goto_d
    move/from16 v32, v5

    add-int/lit8 v5, v4, 0x1

    move/from16 v33, v9

    move-object/from16 v9, v21

    invoke-interface {v9, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_1a

    if-nez v15, :cond_16

    if-nez v28, :cond_15

    if-lt v5, v12, :cond_15

    goto :goto_e

    :cond_15
    move/from16 v21, v4

    goto :goto_10

    :cond_16
    :goto_e
    if-nez v7, :cond_19

    invoke-interface {v9, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_18

    if-nez v3, :cond_17

    if-nez v29, :cond_18

    if-ge v5, v14, :cond_18

    :cond_17
    goto :goto_f

    :cond_18
    move/from16 v21, v4

    goto :goto_10

    :cond_19
    :goto_f
    iput v8, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v4

    add-int v4, v8, v2

    iput v4, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    move-object/from16 v4, v24

    goto :goto_11

    :cond_1a
    move/from16 v21, v4

    :goto_10
    if-eqz v19, :cond_1b

    iput v8, v10, Landroid/graphics/Rect;->left:I

    add-int v4, v8, v2

    iput v4, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v4, v24

    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_11

    :cond_1b
    move-object/from16 v4, v24

    goto :goto_11

    :cond_1c
    move/from16 v32, v5

    move/from16 v33, v9

    move-object/from16 v9, v21

    move/from16 v21, v4

    move-object/from16 v4, v24

    :goto_11
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v9

    move-object/from16 v4, v27

    move/from16 v7, v31

    move/from16 v5, v32

    move/from16 v9, v33

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v27, v4

    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    iget v5, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v7, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    add-int/2addr v5, v7

    if-eqz v25, :cond_1f

    add-int v7, v6, v11

    move/from16 v13, v20

    if-ne v7, v13, :cond_1e

    if-le v5, v8, :cond_1e

    iput v8, v10, Landroid/graphics/Rect;->left:I

    iput v5, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v7, v17

    invoke-virtual {v0, v1, v7, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_12

    :cond_1e
    move-object/from16 v7, v17

    goto :goto_12

    :cond_1f
    move-object/from16 v7, v17

    move/from16 v13, v20

    :goto_12
    move-object v6, v7

    goto/16 :goto_1e

    :cond_20
    move-object/from16 v27, v4

    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v7, v17

    move/from16 v13, v20

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    iget v5, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    if-lez v11, :cond_21

    if-eqz v31, :cond_21

    iput v5, v10, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v8, v27

    invoke-virtual {v0, v1, v8, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_13

    :cond_21
    move-object/from16 v8, v27

    :goto_13
    if-eqz v31, :cond_22

    const/16 v16, 0x1

    goto :goto_14

    :cond_22
    const/16 v16, 0x0

    :goto_14
    move/from16 v20, v16

    move-object/from16 v27, v8

    move/from16 v8, v16

    :goto_15
    if-ge v8, v11, :cond_32

    move/from16 v16, v13

    add-int v13, v6, v8

    if-ge v13, v12, :cond_23

    const/16 v21, 0x1

    goto :goto_16

    :cond_23
    const/16 v21, 0x0

    :goto_16
    if-lt v13, v14, :cond_24

    const/16 v24, 0x1

    goto :goto_17

    :cond_24
    const/16 v24, 0x0

    :goto_17
    if-nez v15, :cond_26

    if-nez v21, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v35, v3

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v34, v20

    goto/16 :goto_1d

    :cond_26
    :goto_18
    if-nez v3, :cond_27

    if-nez v24, :cond_25

    :cond_27
    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move/from16 v29, v6

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v6

    if-eqz v33, :cond_30

    move-object/from16 v30, v7

    move/from16 v7, v23

    if-le v6, v7, :cond_2f

    move/from16 v23, v7

    move/from16 v7, v20

    if-ne v8, v7, :cond_28

    const/16 v20, 0x1

    goto :goto_19

    :cond_28
    const/16 v20, 0x0

    :goto_19
    move/from16 v34, v7

    add-int/lit8 v7, v13, -0x1

    invoke-interface {v9, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_2e

    if-nez v15, :cond_2a

    if-nez v21, :cond_29

    if-lt v7, v12, :cond_29

    goto :goto_1a

    :cond_29
    move/from16 v35, v3

    goto :goto_1c

    :cond_2a
    :goto_1a
    if-nez v20, :cond_2d

    invoke-interface {v9, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_2c

    if-nez v3, :cond_2b

    if-nez v24, :cond_2c

    if-ge v7, v14, :cond_2c

    :cond_2b
    goto :goto_1b

    :cond_2c
    move/from16 v35, v3

    goto :goto_1c

    :cond_2d
    :goto_1b
    move/from16 v35, v3

    sub-int v3, v6, v2

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v6, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v0, v1, v10, v3}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1d

    :cond_2e
    move/from16 v35, v3

    :goto_1c
    if-eqz v19, :cond_31

    sub-int v3, v6, v2

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v6, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1d

    :cond_2f
    move/from16 v35, v3

    move/from16 v23, v7

    move/from16 v34, v20

    goto :goto_1d

    :cond_30
    move/from16 v35, v3

    move-object/from16 v30, v7

    move/from16 v34, v20

    :cond_31
    :goto_1d
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v16

    move/from16 v6, v29

    move-object/from16 v7, v30

    move/from16 v20, v34

    move/from16 v3, v35

    goto/16 :goto_15

    :cond_32
    move/from16 v35, v3

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v16, v13

    move/from16 v34, v20

    if-lez v11, :cond_35

    if-lez v5, :cond_35

    if-eqz v25, :cond_33

    iget v3, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    add-int v6, v3, v5

    iput v6, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v6, v30

    invoke-virtual {v0, v1, v6, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1e

    :cond_33
    move-object/from16 v6, v30

    if-eqz v33, :cond_34

    move/from16 v3, v32

    iput v3, v10, Landroid/graphics/Rect;->left:I

    add-int v7, v3, v2

    iput v7, v10, Landroid/graphics/Rect;->right:I

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v10, v7}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1e

    :cond_34
    move/from16 v3, v32

    goto :goto_1e

    :cond_35
    move-object/from16 v6, v30

    move/from16 v3, v32

    :goto_1e
    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    if-eqz v3, :cond_36

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-virtual {v3, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->draw(Landroid/graphics/Canvas;)V

    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v3, :cond_37

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v3, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_37
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/SemHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    :cond_2
    return v0
.end method

.method blacklist drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method blacklist drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method blacklist drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->left:I

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method blacklist fillGap(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    const/16 v1, 0x22

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingLeft()I

    move-result v2

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    nop

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingRight()I

    move-result v2

    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    nop

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    :goto_2
    return-void
.end method

.method blacklist fillGapRTL(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    const/16 v1, 0x22

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingLeft()I

    move-result v2

    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingRight()I

    move-result v2

    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    :goto_2
    return-void
.end method

.method blacklist findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_4

    :cond_2
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    goto :goto_4

    :cond_5
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_6

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    goto :goto_4

    :cond_8
    add-int/lit8 v1, v0, -0x1

    :goto_3
    if-ltz v1, :cond_a

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_9

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_a
    :goto_4
    const/4 v1, -0x1

    return v1
.end method

.method blacklist findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
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

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

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

.method protected blacklist findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
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

    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method blacklist findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
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

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

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

.method protected blacklist findViewTraversal(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method blacklist findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
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

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

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

.method protected blacklist findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
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

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v0
.end method

.method blacklist fullScroll(I)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    if-ltz v1, :cond_0

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x42

    if-ne p1, v1, :cond_3

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v1, v3

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ge v3, v1, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_4
    return v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapter()Landroid/widget/ListAdapter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public blacklist getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getDividerHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public blacklist getFooterViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getHeaderViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getItemsCanFocus()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public blacklist getMaxScrollAmount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method blacklist getWidthForPosition(I)I
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getWidthForPosition(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->shouldAdjustWidthForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    :cond_0
    return v0
.end method

.method public whitelist isOpaque()Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_f

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mPaddingRight:I

    :goto_1
    sub-int/2addr v3, v4

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_5
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v5, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_8

    :cond_7
    :goto_3
    return v2

    :cond_8
    :goto_4
    return v2

    :cond_9
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_a
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    :goto_5
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v3, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_c
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mPaddingRight:I

    :goto_6
    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v5, :cond_f

    :cond_d
    return v2

    :cond_e
    :goto_7
    return v2

    :cond_f
    :goto_8
    return v0
.end method

.method protected blacklist layoutChildren()V
    .locals 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v7, p0

    iget-boolean v8, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    if-eqz v8, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    const/4 v9, 0x0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    iput-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move v10, v1

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v11, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    move v12, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    packed-switch v6, :pswitch_data_0

    iget v6, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    goto :goto_0

    :pswitch_0
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v1, v6, v13

    if-ltz v1, :cond_3

    if-ge v1, v12, :cond_3

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    :cond_3
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
    iget v13, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v1, v6, v13

    if-ltz v1, :cond_4

    if-ge v1, v12, :cond_4

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    :cond_4
    invoke-virtual {v7, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    if-ltz v6, :cond_5

    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    sub-int/2addr v6, v13

    move v2, v6

    :cond_5
    add-int v6, v1, v2

    invoke-virtual {v7, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :goto_1
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    move/from16 v18, v1

    if-eqz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->handleDataChanged()V

    :cond_6
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_7

    iput-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :cond_7
    return-void

    :cond_8
    :try_start_2
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_3e

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    move-object/from16 v19, v5

    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v7, v5}, Landroid/widget/SemHorizontalListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_9

    const/4 v4, 0x1

    :cond_9
    if-eqz v6, :cond_c

    if-eqz v18, :cond_a

    invoke-direct {v7, v6}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v20

    if-nez v20, :cond_a

    iget-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v9, :cond_b

    :cond_a
    move-object v2, v5

    nop

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    move-object v1, v9

    :cond_b
    invoke-virtual {v7, v6}, Landroid/widget/SemHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    move v3, v9

    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_2

    :cond_c
    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_2

    :cond_d
    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    if-eqz v5, :cond_10

    if-eqz v18, :cond_e

    invoke-direct {v7, v5}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    move-object v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->requestFocus()Z

    move-object v4, v1

    move-object/from16 v23, v2

    goto :goto_3

    :cond_10
    move-object v4, v1

    move-object/from16 v23, v2

    :goto_3
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move v3, v1

    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object v2, v1

    if-eqz v18, :cond_12

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_11

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v24, v4

    add-int v4, v3, v1

    invoke-virtual {v2, v0, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v24

    const/4 v0, 0x1

    goto :goto_4

    :cond_11
    move-object/from16 v24, v4

    goto :goto_5

    :cond_12
    move-object/from16 v24, v4

    invoke-virtual {v2, v12, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->fillActiveViews(II)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->detachAllViewsFromParent()V

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    iget v0, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    packed-switch v0, :pswitch_data_1

    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    if-nez v12, :cond_1b

    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    goto/16 :goto_8

    :pswitch_2
    move-object/from16 v1, p0

    move-object v0, v2

    move-object v2, v15

    move/from16 v25, v3

    move-object/from16 v3, v17

    move/from16 v26, v13

    move-object/from16 v13, v24

    move v4, v14

    move-object/from16 v24, v5

    move v5, v10

    move/from16 v27, v14

    move v14, v6

    move v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_d

    :pswitch_3
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_13

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_d

    :cond_13
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_d

    :pswitch_4
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_d

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_d

    :pswitch_5
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_15

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v10}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    :cond_15
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v11}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v1

    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_d

    :pswitch_6
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    if-eqz v17, :cond_16

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {v7, v1, v10, v11}, Landroid/widget/SemHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_d

    :cond_16
    invoke-direct {v7, v10, v11}, Landroid/widget/SemHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_d

    :pswitch_7
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {v7, v11}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v1

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {v7, v10}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v1

    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_d

    :goto_8
    if-eqz v1, :cond_19

    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    move v1, v2

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    invoke-direct {v7, v11}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    goto/16 :goto_d

    :cond_18
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    iget v3, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v3, v2

    invoke-direct {v7, v3, v10}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    goto/16 :goto_d

    :cond_19
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v1, v3

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    invoke-direct {v7, v10}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    goto/16 :goto_d

    :cond_1a
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v7, v2, v11}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    goto/16 :goto_d

    :cond_1b
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_20

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_1d

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_1d

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-nez v15, :cond_1c

    move v2, v11

    goto :goto_9

    :cond_1c
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_9
    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    goto :goto_d

    :cond_1d
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_1f

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v16, :cond_1e

    move v2, v11

    goto :goto_a

    :cond_1e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_a
    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    goto :goto_d

    :cond_1f
    const/4 v1, 0x0

    invoke-direct {v7, v1, v11}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    goto :goto_d

    :cond_20
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_22

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_22

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-nez v15, :cond_21

    move v2, v10

    goto :goto_b

    :cond_21
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_b
    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_d

    :cond_22
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_24

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v16, :cond_23

    move v2, v10

    goto :goto_c

    :cond_23
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_c
    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_d

    :cond_24
    const/4 v1, 0x0

    invoke-direct {v7, v1, v10}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    :goto_d
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->scrapActiveViews()V

    const/4 v2, -0x1

    if-eqz v1, :cond_2b

    iget-boolean v3, v7, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_2a

    if-ne v1, v13, :cond_25

    if-eqz v23, :cond_25

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_26

    :cond_25
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_26
    const/4 v3, 0x1

    goto :goto_e

    :cond_27
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    :cond_28
    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_f

    :cond_29
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    :goto_f
    goto :goto_10

    :cond_2a
    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    :goto_10
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v7, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    goto :goto_14

    :cond_2b
    iget v3, v7, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    iget v3, v7, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    goto :goto_11

    :cond_2c
    const/4 v3, 0x0

    goto :goto_12

    :cond_2d
    :goto_11
    const/4 v3, 0x1

    :goto_12
    if-eqz v3, :cond_2f

    iget v4, v7, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    iget v5, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2e

    iget v5, v7, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    :cond_2e
    goto :goto_13

    :cond_2f
    iget v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_31

    iget v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_30

    iget v5, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    :cond_30
    goto :goto_13

    :cond_31
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    iget-object v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz v23, :cond_32

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    :cond_32
    :goto_14
    const/4 v3, 0x0

    if-eqz v19, :cond_39

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_37

    if-eqz v21, :cond_34

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_34

    nop

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v9, :cond_33

    if-eqz v2, :cond_33

    nop

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    const/16 v6, 0x40

    invoke-virtual {v2, v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    nop

    goto :goto_15

    :cond_33
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_15

    :cond_34
    if-eq v14, v2, :cond_36

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v6, v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_35
    goto :goto_17

    :cond_36
    :goto_15
    goto :goto_17

    :cond_37
    if-eq v14, v2, :cond_39

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v6, v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    if-eqz v22, :cond_38

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_16

    :cond_38
    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_16
    invoke-virtual {v4}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_39

    if-eq v4, v5, :cond_39

    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocus()V

    if-eqz v5, :cond_39

    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_39
    :goto_17
    if-eqz v23, :cond_3a

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->onFinishTemporaryDetach()V

    :cond_3a
    const/4 v2, 0x0

    iput v2, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    iput-boolean v2, v7, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_3b

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    iput-object v3, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_3b
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->updateScrollIndicators()V

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v2, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_3d

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :cond_3d
    return-void

    :cond_3e
    move/from16 v26, v13

    move/from16 v27, v14

    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but SemHorizontalListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in SemHorizontalListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getId()I

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

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

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

    if-nez v8, :cond_3f

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    :cond_3f
    throw v0

    nop

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

.method blacklist lookForSelectablePosition(IZ)I
    .locals 5

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_5

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-ge p1, v2, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_2
    if-ge p1, v2, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_3
    if-ltz p1, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_4
    if-ltz p1, :cond_6

    if-lt p1, v2, :cond_5

    goto :goto_4

    :cond_5
    return p1

    :cond_6
    :goto_4
    return v1

    :cond_7
    :goto_5
    return v1
.end method

.method blacklist lookForSelectablePositionAfter(IIZ)I
    .locals 6

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    if-eq v2, v1, :cond_1

    return v2

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iget-boolean v4, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-eqz p3, :cond_3

    add-int/lit8 v4, p2, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    if-ge p2, p1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-lt p2, p1, :cond_9

    return v1

    :cond_3
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    if-le p2, p1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    if-gt p2, p1, :cond_9

    return v1

    :cond_5
    if-eqz p3, :cond_7

    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_2
    if-le p2, p1, :cond_6

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    if-gt p2, p1, :cond_9

    return v1

    :cond_7
    add-int/lit8 v4, p2, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_3
    if-ge p2, p1, :cond_8

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    if-lt p2, p1, :cond_9

    return v1

    :cond_9
    return p2

    :cond_a
    :goto_4
    return v1
.end method

.method final blacklist measureWidthOfChildren(IIIII)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_0

    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    return v4

    :cond_0
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    if-lez v5, :cond_1

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget v5, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, -0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_2

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_2
    move v9, v8

    :goto_1
    move v8, v9

    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v10

    iget-object v11, v0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    move/from16 v12, p2

    :goto_2
    if-gt v12, v8, :cond_9

    invoke-virtual {v0, v12, v11}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    move/from16 v14, p1

    invoke-direct {v0, v13, v12, v14}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    if-lez v12, :cond_4

    iget-boolean v15, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v15, :cond_3

    sub-int/2addr v4, v5

    goto :goto_3

    :cond_3
    add-int/2addr v4, v5

    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v9, v15}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v9, v13, v7}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v4, v15

    if-lt v4, v1, :cond_7

    if-ltz v2, :cond_6

    if-le v12, v2, :cond_6

    if-lez v6, :cond_6

    if-eq v4, v1, :cond_6

    move v7, v6

    goto :goto_4

    :cond_6
    move v7, v1

    :goto_4
    return v7

    :cond_7
    if-ltz v2, :cond_8

    if-lt v12, v2, :cond_8

    move v6, v4

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    move/from16 v14, p1

    return v4
.end method

.method protected whitelist onFinishInflate()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->removeAllViews()V

    :cond_1
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const v4, 0x7fffffff

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    add-int v8, v6, v7

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v8, v3}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v3, p2}, Landroid/widget/SemHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    if-ge v9, v4, :cond_2

    move v4, v9

    move v1, v7

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-ltz v1, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    :goto_2
    if-eqz p1, :cond_5

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v3, :cond_5

    new-instance v3, Landroid/widget/SemHorizontalListView$2;

    invoke-direct {v3, p0}, Landroid/widget/SemHorizontalListView$2;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectionModeForAccessibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalListView;->isItemChecked(I)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    move v4, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v6, p0

    move/from16 v7, p2

    invoke-super/range {p0 .. p2}, Landroid/widget/SemHorizontalAbsListView;->onMeasure(II)V

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

    iget-object v5, v6, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v5, :cond_0

    move v5, v10

    goto :goto_0

    :cond_0
    iget-object v5, v6, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_0
    iput v5, v6, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iget v5, v6, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v5, :cond_2

    if-eqz v8, :cond_1

    if-nez v9, :cond_2

    :cond_1
    iget-object v5, v6, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v10, v5}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v10, v7}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v4, v10}, Landroid/widget/SemHorizontalListView;->combineMeasuredStates(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v6, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v11, v11, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v6, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    const/4 v11, -0x1

    invoke-virtual {v10, v5, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_2
    move v10, v2

    move v11, v3

    move v12, v4

    if-nez v9, :cond_3

    iget-object v2, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v3

    add-int/2addr v2, v3

    move v13, v2

    goto :goto_1

    :cond_3
    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    or-int/2addr v2, v1

    move v13, v2

    :goto_1
    if-nez v8, :cond_4

    iget-object v1, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    move v14, v0

    goto :goto_2

    :cond_4
    move v14, v0

    :goto_2
    const/high16 v0, -0x80000000

    if-ne v8, v0, :cond_5

    const/4 v3, -0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v14

    :cond_5
    invoke-virtual {p0, v14, v13}, Landroid/widget/SemHorizontalListView;->setMeasuredDimension(II)V

    iput v7, v6, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    sub-int v3, p1, v3

    sub-int v3, v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-boolean v4, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_0
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    if-nez v5, :cond_1

    new-instance v5, Landroid/widget/SemHorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/SemHorizontalListView$FocusSelector;-><init>(Landroid/widget/SemHorizontalListView;Landroid/widget/SemHorizontalListView$FocusSelector-IA;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/SemHorizontalListView$FocusSelector;->setup(II)Landroid/widget/SemHorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->onSizeChanged(IIII)V

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalListView$3;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$3;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method blacklist pageScroll(I)Z
    .locals 6

    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v0, v2

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x1

    :goto_0
    if-ltz v0, :cond_4

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v0, v3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    if-ltz v4, :cond_4

    const/4 v1, 0x4

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    if-eqz v3, :cond_1

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v1, v5

    if-le v4, v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_2

    iput v2, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_3
    return v2

    :cond_4
    return v1

    :cond_5
    return v1
.end method

.method protected blacklist recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeFooterView(Landroid/view/View;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p2, Landroid/graphics/Rect;->left:I

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

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getScrollX()I

    move-result v2

    add-int v3, v2, v1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingLeftFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-gtz v5, :cond_0

    if-le v0, v4, :cond_1

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingRightFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_2

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_3

    :cond_2
    sub-int/2addr v3, v4

    :cond_3
    const/4 v7, 0x0

    iget v9, p2, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_6

    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-le v9, v2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v9, v1, :cond_4

    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_0

    :cond_4
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    :goto_0
    sub-int v9, v6, v3

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_5
    goto :goto_2

    :cond_6
    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-ge v9, v2, :cond_5

    iget v9, p2, Landroid/graphics/Rect;->right:I

    if-ge v9, v3, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v9, v1, :cond_7

    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_1

    :cond_7
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    :goto_1
    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

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

    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_9
    return v8
.end method

.method blacklist resetList()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public blacklist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mOldSelectedRowId:J

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkFocus()V

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    :cond_6
    goto :goto_3

    :cond_7
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    :goto_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    return-void
.end method

.method public blacklist setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    return-void
.end method

.method public blacklist setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    :goto_0
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public blacklist setDividerHeight(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public blacklist setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setChildrenDrawingOrderEnabled(Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    new-instance v1, Landroid/widget/SemHorizontalListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalListView$1;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    return-void
.end method

.method public blacklist setFooterDividersEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public blacklist setHeaderDividersEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public blacklist setItemsCanFocus(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public blacklist setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method public blacklist setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public blacklist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    return-void
.end method

.method public blacklist setSelectionAfterHeaderView()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_1
    iput v0, p0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    :goto_0
    return-void
.end method

.method public blacklist setSelectionFromStart(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    :cond_2
    :goto_0
    if-ltz p1, :cond_6

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    :goto_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mSyncRowId:J

    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    :cond_6
    return-void
.end method

.method public blacklist setSelectionFromTop(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    :cond_2
    :goto_0
    if-ltz p1, :cond_6

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    :goto_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    iput p1, p0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mSyncRowId:J

    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    :cond_6
    return-void
.end method

.method blacklist setSelectionInt(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

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
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    :cond_3
    return-void
.end method

.method blacklist shouldCorrectTooHigh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public blacklist smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
