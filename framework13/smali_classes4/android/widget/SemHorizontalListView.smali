.class public Landroid/widget/SemHorizontalListView;
.super Landroid/widget/SemHorizontalAbsListView;
.source "SemHorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalListView$ItemInfoTag;,
        Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;,
        Landroid/widget/SemHorizontalListView$FocusSelector;,
        Landroid/widget/SemHorizontalListView$FixedViewInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 213
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 260
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 145
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 146
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    .line 165
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 168
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    .line 172
    new-instance v2, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;-><init>(Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult-IA;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    .line 301
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 304
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 306
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 307
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 312
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 314
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 319
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 320
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 325
    .local v6, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 326
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 332
    .local v7, "dividerHeight":I
    if-eqz v7, :cond_4

    .line 333
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->setDividerHeight(I)V

    .line 336
    :cond_4
    const/4 v8, 0x3

    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 337
    const/4 v8, 0x4

    invoke-virtual {v2, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 339
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    if-eqz p2, :cond_5

    .line 342
    const-string v0, "http://schemas.android.samsung.com.samsung.android"

    const-string v8, "fixed_size_items"

    invoke-interface {p2, v0, v8, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    goto :goto_0

    .line 345
    :cond_5
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    .line 347
    :goto_0
    return-void
.end method

.method private blacklist addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 4245
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_0

    .line 4246
    add-int/lit8 v0, p2, 0x1

    .local v0, "abovePosition":I
    goto :goto_0

    .line 4247
    .end local v0    # "abovePosition":I
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 4248
    .restart local v0    # "abovePosition":I
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 4249
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int v10, v1, v2

    .line 4251
    .local v10, "edgeOfNewChild":I
    if-eqz v9, :cond_1

    .line 4252
    const/4 v5, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v9

    move v3, v0

    move v4, v10

    invoke-direct/range {v1 .. v8}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4255
    :cond_1
    return-object v9
.end method

.method private blacklist addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 4259
    add-int/lit8 v8, p2, 0x1

    .line 4260
    .local v8, "belowPosition":I
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 4261
    .local v9, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 4262
    .local v0, "edgeOfNewChild":I
    if-eqz p1, :cond_0

    .line 4263
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int v0, v1, v2

    move v10, v0

    goto :goto_0

    .line 4262
    :cond_0
    move v10, v0

    .line 4265
    .end local v0    # "edgeOfNewChild":I
    .local v10, "edgeOfNewChild":I
    :goto_0
    if-eqz v9, :cond_1

    .line 4266
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4269
    :cond_1
    return-object v9
.end method

.method private blacklist adjustViewsLeftOrRight()V
    .locals 5

    .line 366
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 369
    .local v0, "childCount":I
    if-lez v0, :cond_a

    .line 372
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_4

    .line 375
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 377
    .local v1, "child":Landroid/view/View;
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .local v2, "delta":I
    goto :goto_0

    .line 380
    .end local v2    # "delta":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 382
    .restart local v2    # "delta":I
    :goto_0
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_2

    .line 385
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_1

    .line 386
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 388
    :cond_1
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 390
    :cond_2
    :goto_1
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    .line 391
    if-lez v2, :cond_9

    .line 392
    const/4 v2, 0x0

    goto :goto_4

    .line 394
    :cond_3
    if-gez v2, :cond_9

    .line 397
    const/4 v2, 0x0

    goto :goto_4

    .line 402
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 404
    .restart local v1    # "child":Landroid/view/View;
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_5

    .line 405
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .restart local v2    # "delta":I
    goto :goto_2

    .line 406
    .end local v2    # "delta":I
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 407
    .restart local v2    # "delta":I
    :goto_2
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_7

    .line 410
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_6

    .line 411
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_3

    .line 413
    :cond_6
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 416
    :cond_7
    :goto_3
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_8

    .line 417
    if-gez v2, :cond_9

    .line 418
    const/4 v2, 0x0

    goto :goto_4

    .line 420
    :cond_8
    if-lez v2, :cond_9

    .line 423
    const/4 v2, 0x0

    .line 428
    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    .line 429
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 432
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_a
    return-void
.end method

.method private blacklist amountToScroll(II)I
    .locals 11
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .line 3744
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 3745
    .local v0, "listRight":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 3747
    .local v1, "listLeft":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    .line 3749
    .local v2, "numChildren":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x42

    if-ne p1, v5, :cond_b

    .line 3750
    add-int/lit8 v5, v2, -0x1

    .line 3751
    .local v5, "indexToMakeVisible":I
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_0

    .line 3752
    const/4 v5, 0x0

    .line 3754
    :cond_0
    if-eq p2, v3, :cond_1

    .line 3755
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v5, p2, v6

    .line 3757
    :cond_1
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_2

    .line 3758
    :goto_0
    if-gez v5, :cond_3

    .line 3760
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 3761
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 3762
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v5, p2, v6

    goto :goto_0

    .line 3765
    :cond_2
    :goto_1
    if-gt v2, v5, :cond_3

    .line 3767
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 3768
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3771
    :cond_3
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 3772
    .local v6, "positionToMakeVisible":I
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3774
    .local v7, "viewToMakeVisible":Landroid/view/View;
    move v8, v0

    .line 3775
    .local v8, "goalRight":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_4

    if-lez v6, :cond_5

    goto :goto_2

    :cond_4
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_5

    .line 3776
    :goto_2
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    .line 3779
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    if-gt v9, v8, :cond_6

    .line 3781
    return v4

    .line 3784
    :cond_6
    if-eq p2, v3, :cond_7

    .line 3785
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v8, v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v3, v9, :cond_7

    .line 3787
    return v4

    .line 3790
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v8

    .line 3792
    .local v3, "amountToScroll":I
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

    .line 3794
    :goto_3
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v2, -0x1

    :goto_4
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v0

    .line 3795
    .local v4, "max":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3798
    .end local v4    # "max":I
    :cond_a
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 3800
    .end local v3    # "amountToScroll":I
    .end local v5    # "indexToMakeVisible":I
    .end local v6    # "positionToMakeVisible":I
    .end local v7    # "viewToMakeVisible":Landroid/view/View;
    .end local v8    # "goalRight":I
    :cond_b
    const/4 v5, 0x0

    .line 3801
    .restart local v5    # "indexToMakeVisible":I
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_c

    .line 3802
    add-int/lit8 v5, v2, -0x1

    .line 3804
    :cond_c
    if-eq p2, v3, :cond_d

    .line 3805
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v5, p2, v6

    .line 3807
    :cond_d
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_e

    .line 3808
    :goto_5
    if-gt v2, v5, :cond_f

    .line 3810
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 3811
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3814
    :cond_e
    :goto_6
    if-gez v5, :cond_f

    .line 3816
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 3817
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 3818
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v5, p2, v6

    goto :goto_6

    .line 3821
    :cond_f
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 3822
    .restart local v6    # "positionToMakeVisible":I
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3823
    .restart local v7    # "viewToMakeVisible":Landroid/view/View;
    move v8, v1

    .line 3824
    .local v8, "goalLeft":I
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_10

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_11

    goto :goto_7

    :cond_10
    if-lez v6, :cond_11

    .line 3825
    :goto_7
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    .line 3827
    :cond_11
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    if-lt v9, v8, :cond_12

    .line 3829
    return v4

    .line 3832
    :cond_12
    if-eq p2, v3, :cond_13

    .line 3833
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v3, v9, :cond_13

    .line 3835
    return v4

    .line 3838
    :cond_13
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v8, v3

    .line 3839
    .restart local v3    # "amountToScroll":I
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

    .line 3841
    :goto_8
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_15

    add-int/lit8 v4, v2, -0x1

    :cond_15
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v1, v4

    .line 3842
    .restart local v4    # "max":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3844
    .end local v4    # "max":I
    :cond_16
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private blacklist amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 3
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .line 4053
    const/4 v0, 0x0

    .line 4054
    .local v0, "amountToScroll":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4055
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4056
    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    .line 4057
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_3

    .line 4058
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    .line 4059
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_3

    goto :goto_0

    :cond_0
    if-lez p3, :cond_3

    .line 4060
    :goto_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 4064
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 4065
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_3

    .line 4066
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    .line 4067
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_2

    if-lez p3, :cond_3

    goto :goto_1

    :cond_2
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_3

    .line 4068
    :goto_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 4072
    .end local v1    # "listRight":I
    :cond_3
    :goto_2
    return v0
.end method

.method private blacklist arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
    .locals 7
    .param p1, "direction"    # I

    .line 3951
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3953
    .local v0, "selectedView":Landroid/view/View;
    const/16 v1, 0x42

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3954
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3955
    .local v2, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3956
    .local v2, "newFocus":Landroid/view/View;
    goto/16 :goto_7

    .line 3957
    .end local v2    # "newFocus":Landroid/view/View;
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 3958
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3959
    .local v2, "leftFadingEdgeShowing":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 3960
    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    add-int/2addr v4, v5

    .line 3962
    .local v4, "listLeft":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 3963
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_2

    .line 3964
    :cond_3
    move v5, v4

    :goto_2
    nop

    .line 3965
    .local v5, "xSearchPoint":I
    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v3, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3966
    .end local v2    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    .end local v5    # "xSearchPoint":I
    goto :goto_6

    .line 3967
    :cond_4
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 3968
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v4, v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    .line 3969
    .local v2, "rightFadingEdgeShowing":Z
    :goto_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 3970
    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    sub-int/2addr v4, v5

    .line 3972
    .local v4, "listRight":I
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v4, :cond_7

    .line 3973
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_5

    .line 3974
    :cond_7
    move v5, v4

    :goto_5
    nop

    .line 3975
    .restart local v5    # "xSearchPoint":I
    iget-object v6, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v3, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3977
    .end local v2    # "rightFadingEdgeShowing":Z
    .end local v4    # "listRight":I
    .end local v5    # "xSearchPoint":I
    :goto_6
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    .line 3980
    .local v2, "newFocus":Landroid/view/View;
    :goto_7
    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 3981
    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    .line 3985
    .local v4, "positionOfNewFocus":I
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a

    .line 3986
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    .line 3987
    .local v5, "selectablePosition":I
    if-eq v5, v6, :cond_a

    if-ne p1, v1, :cond_8

    if-lt v5, v4, :cond_9

    :cond_8
    const/16 v1, 0x11

    if-ne p1, v1, :cond_a

    if-le v5, v4, :cond_a

    .line 3990
    :cond_9
    return-object v3

    .line 3994
    .end local v5    # "selectablePosition":I
    :cond_a
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/SemHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 3996
    .local v1, "focusScroll":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getMaxScrollAmount()I

    move-result v5

    .line 3997
    .local v5, "maxScrollAmount":I
    if-ge v1, v5, :cond_b

    .line 3999
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 4000
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 4001
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v3

    .line 4002
    :cond_b
    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_c

    .line 4007
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 4008
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 4009
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mArrowScrollFocusResult:Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    return-object v3

    .line 4012
    .end local v1    # "focusScroll":I
    .end local v4    # "positionOfNewFocus":I
    .end local v5    # "maxScrollAmount":I
    :cond_c
    return-object v3
.end method

.method private blacklist arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 3527
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3528
    return v1

    .line 3531
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3532
    .local v0, "selectedView":Landroid/view/View;
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    .line 3534
    .local v2, "selectedPos":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/SemHorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 3535
    .local v3, "nextSelectedPosition":I
    invoke-direct {p0, p1, v3}, Landroid/widget/SemHorizontalListView;->amountToScroll(II)I

    move-result v4

    .line 3538
    .local v4, "amountToScroll":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollFocused(I)Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 3539
    .local v5, "focusResult":Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;
    :goto_0
    if-eqz v5, :cond_2

    .line 3540
    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 3541
    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    .line 3544
    :cond_2
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v1

    .line 3545
    .local v7, "needToRedraw":Z
    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_6

    .line 3546
    if-eqz v5, :cond_4

    move v9, v6

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    invoke-direct {p0, v0, p1, v3, v9}, Landroid/widget/SemHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3547
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 3548
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 3549
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3550
    move v2, v3

    .line 3551
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_5

    if-nez v5, :cond_5

    .line 3554
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    .line 3555
    .local v9, "focused":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 3556
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 3559
    .end local v9    # "focused":Landroid/view/View;
    :cond_5
    const/4 v7, 0x1

    .line 3560
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    .line 3563
    :cond_6
    if-lez v4, :cond_8

    .line 3564
    const/16 v9, 0x11

    if-ne p1, v9, :cond_7

    move v9, v4

    goto :goto_3

    :cond_7
    neg-int v9, v4

    :goto_3
    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    .line 3565
    const/4 v7, 0x1

    .line 3570
    :cond_8
    iget-boolean v9, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_a

    if-nez v5, :cond_a

    if-eqz v0, :cond_a

    .line 3571
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 3572
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 3573
    .restart local v9    # "focused":Landroid/view/View;
    invoke-direct {p0, v9, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v10

    if-lez v10, :cond_a

    .line 3574
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 3579
    .end local v9    # "focused":Landroid/view/View;
    :cond_a
    if-ne v3, v8, :cond_b

    if-eqz v0, :cond_b

    .line 3580
    invoke-direct {p0, v0, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 3581
    const/4 v0, 0x0

    .line 3582
    iget-object v9, p0, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 3583
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->hideSelector()V

    .line 3587
    iput v8, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    .line 3590
    :cond_b
    if-eqz v7, :cond_e

    .line 3591
    if-eqz v0, :cond_c

    .line 3592
    invoke-virtual {p0, v2, v0}, Landroid/widget/SemHorizontalListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3593
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    .line 3595
    :cond_c
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3596
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 3598
    :cond_d
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    .line 3599
    return v6

    .line 3602
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

    .line 761
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 762
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 764
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 765
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 766
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 767
    .local v3, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 768
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 764
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 3159
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1a

    .line 3163
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 3164
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 3167
    :cond_1
    const/4 v0, 0x0

    .line 3168
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 3170
    .local v2, "action":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    .line 3171
    const/4 v4, 0x2

    const/16 v5, 0x42

    const/16 v6, 0x11

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_19

    .line 3269
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3270
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

    .line 3263
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3264
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

    .line 3255
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3256
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

    .line 3257
    :cond_8
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3258
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

    .line 3247
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3248
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

    .line 3249
    :cond_d
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3250
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

    .line 3236
    :sswitch_4
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_22

    .line 3237
    :cond_10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3238
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

    .line 3239
    :cond_13
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3240
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

    .line 3242
    :cond_16
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_19

    .line 3225
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3226
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 3227
    if-nez v0, :cond_22

    .line 3228
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_22

    .line 3229
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->keyPressed()V

    .line 3230
    const/4 v0, 0x1

    goto/16 :goto_19

    .line 3191
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_13

    .line 3203
    :cond_17
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3204
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

    .line 3192
    :cond_1a
    :goto_13
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    .line 3193
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 3194
    if-nez v0, :cond_22

    .line 3195
    :goto_14
    add-int/lit8 v4, p2, -0x1

    .end local p2    # "count":I
    .local v4, "count":I
    if-lez p2, :cond_1f

    .line 3196
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 3197
    const/4 v0, 0x1

    move p2, v4

    goto :goto_14

    .line 3173
    .end local v4    # "count":I
    .restart local p2    # "count":I
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_17

    .line 3185
    :cond_1b
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3186
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

    .line 3174
    :cond_1e
    :goto_17
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    .line 3175
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 3176
    if-nez v0, :cond_22

    .line 3177
    :goto_18
    add-int/lit8 v4, p2, -0x1

    .end local p2    # "count":I
    .restart local v4    # "count":I
    if-lez p2, :cond_1f

    .line 3178
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 3179
    const/4 v0, 0x1

    move p2, v4

    goto :goto_18

    .line 3292
    :cond_1f
    move p2, v4

    goto :goto_19

    .line 3216
    .end local v4    # "count":I
    .restart local p2    # "count":I
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3217
    :cond_20
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    .line 3218
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v0

    goto :goto_19

    .line 3209
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3210
    :cond_21
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mSemCurrentFocusPosition:I

    .line 3211
    const/16 v4, 0x21

    invoke-direct {p0, v4}, Landroid/widget/SemHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v0

    .line 3292
    :cond_22
    :goto_19
    if-eqz v0, :cond_23

    .line 3293
    return v3

    .line 3296
    :cond_23
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3297
    return v3

    .line 3300
    :cond_24
    packed-switch v2, :pswitch_data_0

    .line 3311
    return v1

    .line 3308
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3305
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3302
    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/SemHorizontalAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3160
    .end local v0    # "handled":Z
    .end local v2    # "action":I
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
    .param p1, "childCount"    # I

    .line 1910
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1911
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 1914
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1917
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1920
    .local v2, "lastRight":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 1924
    .local v3, "end":I
    sub-int v4, v3, v2

    .line 1925
    .local v4, "rightOffset":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1926
    .local v5, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1930
    .local v6, "firstLeft":I
    if-lez v4, :cond_2

    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_2

    .line 1931
    :cond_0
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1933
    iget-object v7, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1936
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 1937
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1940
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1942
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1947
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v3    # "end":I
    .end local v4    # "rightOffset":I
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "firstLeft":I
    :cond_2
    return-void
.end method

.method private blacklist correctTooHighRTL(I)V
    .locals 11
    .param p1, "childCount"    # I

    .line 1952
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1953
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 1956
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1959
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1961
    .local v2, "lastLeft":I
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 1964
    .local v3, "start":I
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 1968
    .local v4, "end":I
    sub-int v5, v2, v3

    .line 1970
    .local v5, "leftOffset":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1972
    .local v6, "firstChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1978
    .local v7, "firstRight":I
    if-lez v5, :cond_2

    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gtz v8, :cond_0

    if-le v7, v4, :cond_2

    .line 1980
    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_1

    .line 1982
    sub-int v8, v7, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1985
    :cond_1
    neg-int v8, v5

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 1987
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v8, :cond_2

    .line 1989
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 1991
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1999
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastLeft":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "leftOffset":I
    .end local v6    # "firstChild":Landroid/view/View;
    .end local v7    # "firstRight":I
    :cond_2
    return-void
.end method

.method private blacklist correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .line 2010
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    .line 2013
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2016
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2019
    .local v1, "firstLeft":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2022
    .local v2, "start":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 2026
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 2027
    .local v4, "leftOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2028
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    .line 2029
    .local v6, "lastRight":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 2033
    .local v7, "lastPosition":I
    if-lez v4, :cond_3

    .line 2034
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-le v6, v3, :cond_0

    goto :goto_0

    .line 2048
    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    .line 2049
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_1

    .line 2035
    :cond_1
    :goto_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    .line 2037
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2040
    :cond_2
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 2041
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_3

    .line 2044
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 2046
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2053
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstLeft":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "leftOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastRight":I
    .end local v7    # "lastPosition":I
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist correctTooLowRTL(I)V
    .locals 11
    .param p1, "childCount"    # I

    .line 2059
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    .line 2062
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2065
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2068
    .local v1, "firstRight":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 2071
    .local v2, "start":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 2075
    .local v3, "end":I
    sub-int v4, v3, v1

    .line 2076
    .local v4, "rightOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2077
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 2078
    .local v6, "lastLeft":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 2083
    .local v7, "lastPosition":I
    if-lez v4, :cond_3

    .line 2085
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_0

    goto :goto_0

    .line 2100
    :cond_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    .line 2101
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_1

    .line 2087
    :cond_1
    :goto_0
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    .line 2089
    iget-object v8, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v6

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2092
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 2094
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_3

    .line 2096
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 2098
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2106
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstRight":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "rightOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastLeft":I
    .end local v7    # "lastPosition":I
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .line 4083
    const/4 v0, 0x0

    .line 4084
    .local v0, "distance":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4085
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4086
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 4087
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 4088
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 4089
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_1

    .line 4090
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    .line 4092
    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist fillFromLeft(I)Landroid/view/View;
    .locals 2
    .param p1, "nextLeft"    # I

    .line 1101
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1102
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1103
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1104
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1106
    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist fillFromMiddle(II)Landroid/view/View;
    .locals 8
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .line 1130
    sub-int v0, p2, p1

    .line 1132
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v7

    .line 1134
    .local v7, "position":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1136
    .local v1, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1138
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1139
    .local v2, "selWidth":I
    if-gt v2, v0, :cond_0

    .line 1140
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1143
    :cond_0
    invoke-direct {p0, v1, v7}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 1145
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    .line 1146
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_0

    .line 1147
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_0

    .line 1149
    :cond_2
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_0

    .line 1150
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    .line 1153
    :goto_0
    return-object v1
.end method

.method private blacklist fillFromRight(I)Landroid/view/View;
    .locals 3
    .param p1, "nextRight"    # I

    .line 1109
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1110
    .local v0, "last":I
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1111
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1112
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-gez v1, :cond_0

    .line 1113
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1116
    :cond_0
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private blacklist fillFromSelection(III)Landroid/view/View;
    .locals 10
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .line 1201
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 1202
    .local v0, "fadingEdgeLength":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    .line 1206
    .local v7, "selectedPosition":I
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    .line 1208
    .local v8, "leftSelectionPixel":I
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v9

    .line 1211
    .local v9, "rightSelectionPixel":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1215
    .local v1, "sel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v9, :cond_0

    .line 1218
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v8

    .line 1222
    .local v2, "spaceLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v9

    .line 1223
    .local v3, "spaceRight":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1226
    .local v4, "offset":I
    neg-int v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .end local v2    # "spaceLeft":I
    .end local v3    # "spaceRight":I
    .end local v4    # "offset":I
    goto :goto_0

    .line 1227
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v8, :cond_1

    .line 1230
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v8, v2

    .line 1234
    .restart local v2    # "spaceLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v9, v3

    .line 1235
    .restart local v3    # "spaceRight":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1238
    .restart local v4    # "offset":I
    invoke-virtual {v1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1227
    .end local v2    # "spaceLeft":I
    .end local v3    # "spaceRight":I
    .end local v4    # "offset":I
    :cond_1
    :goto_0
    nop

    .line 1242
    :goto_1
    invoke-direct {p0, v1, v7}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 1244
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v2, :cond_3

    .line 1245
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    goto :goto_2

    .line 1246
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    goto :goto_2

    .line 1248
    :cond_3
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    goto :goto_2

    .line 1249
    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    .line 1252
    :goto_2
    return-object v1
.end method

.method private blacklist fillLeft(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .line 1039
    const/4 v0, 0x0

    .line 1041
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 1042
    .local v1, "end":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 1043
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 1046
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-le p2, v1, :cond_4

    if-ltz p1, :cond_4

    .line 1048
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    .line 1049
    .local v8, "selected":Z
    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 1051
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1052
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v3, v4

    .line 1053
    .end local p2    # "nextRight":I
    .local v3, "nextRight":I
    if-eqz v8, :cond_2

    .line 1054
    move-object p2, v2

    move-object v0, p2

    move p2, v3

    .end local v0    # "selectedView":Landroid/view/View;
    .local p2, "selectedView":Landroid/view/View;
    goto :goto_2

    .line 1053
    .end local p2    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedView":Landroid/view/View;
    :cond_2
    move p2, v3

    .line 1057
    .end local v3    # "nextRight":I
    .local p2, "nextRight":I
    :cond_3
    :goto_2
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, -0x1

    .line 1058
    goto :goto_0

    .line 1060
    :cond_4
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1061
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    .line 1062
    return-object v0
.end method

.method private blacklist fillLeftAndRight(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 1164
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1165
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_1

    .line 1166
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 1167
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 1168
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1169
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    goto :goto_0

    .line 1171
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 1172
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1173
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    goto :goto_0

    .line 1177
    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1178
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1179
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1180
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_0

    .line 1182
    :cond_2
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1183
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1184
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1187
    :goto_0
    return-void
.end method

.method private blacklist fillLeftRTL(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .line 1065
    const/4 v0, 0x0

    .line 1067
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 1068
    .local v1, "end":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 1069
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 1072
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-le p2, v1, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge p1, v3, :cond_4

    .line 1074
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    .line 1076
    .local v8, "selected":Z
    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 1078
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1079
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    sub-int/2addr v3, v4

    .line 1081
    .end local p2    # "nextRight":I
    .local v3, "nextRight":I
    if-eqz v8, :cond_2

    .line 1082
    move-object p2, v2

    move-object v0, p2

    move p2, v3

    .end local v0    # "selectedView":Landroid/view/View;
    .local p2, "selectedView":Landroid/view/View;
    goto :goto_2

    .line 1081
    .end local p2    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedView":Landroid/view/View;
    :cond_2
    move p2, v3

    .line 1085
    .end local v3    # "nextRight":I
    .local p2, "nextRight":I
    :cond_3
    :goto_2
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, 0x1

    .line 1086
    goto :goto_0

    .line 1089
    :cond_4
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    .line 1090
    return-object v0
.end method

.method private blacklist fillRight(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .line 972
    const/4 v0, 0x0

    .line 974
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    .line 975
    .local v1, "end":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 976
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 979
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ge p2, v1, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge p1, v3, :cond_4

    .line 981
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    .line 982
    .local v8, "selected":Z
    const/4 v5, 0x1

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v2

    .line 984
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 985
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v3, v4

    .line 986
    .end local p2    # "nextLeft":I
    .local v3, "nextLeft":I
    if-eqz v8, :cond_2

    .line 987
    move-object p2, v2

    move-object v0, p2

    move p2, v3

    .end local v0    # "selectedView":Landroid/view/View;
    .local p2, "selectedView":Landroid/view/View;
    goto :goto_2

    .line 986
    .end local p2    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedView":Landroid/view/View;
    :cond_2
    move p2, v3

    .line 990
    .end local v3    # "nextLeft":I
    .local p2, "nextLeft":I
    :cond_3
    :goto_2
    nop

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "selected":Z
    add-int/lit8 p1, p1, 0x1

    .line 991
    goto :goto_0

    .line 993
    :cond_4
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    .line 994
    return-object v0
.end method

.method private blacklist fillRightRTL(II)Landroid/view/View;
    .locals 10
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .line 998
    const/4 v0, 0x0

    .line 1000
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    .line 1001
    .local v1, "end":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 1002
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1005
    :cond_0
    const/4 v2, 0x0

    .line 1006
    .local v2, "isin":Z
    :goto_0
    const/4 v3, 0x1

    if-ge p2, v1, :cond_4

    if-ltz p1, :cond_4

    .line 1009
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v9, v3

    .line 1010
    .local v9, "selected":Z
    const/4 v6, 0x1

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v3

    .line 1013
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1014
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v4, v5

    .line 1015
    .end local p2    # "nextLeft":I
    .local v4, "nextLeft":I
    if-eqz v9, :cond_2

    .line 1016
    move-object p2, v3

    move-object v0, p2

    move p2, v4

    .end local v0    # "selectedView":Landroid/view/View;
    .local p2, "selectedView":Landroid/view/View;
    goto :goto_2

    .line 1015
    .end local p2    # "selectedView":Landroid/view/View;
    .restart local v0    # "selectedView":Landroid/view/View;
    :cond_2
    move p2, v4

    .line 1019
    .end local v4    # "nextLeft":I
    .local p2, "nextLeft":I
    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 1020
    const/4 v2, 0x1

    .line 1021
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "selected":Z
    goto :goto_0

    .line 1023
    :cond_4
    add-int/lit8 v4, p1, 0x1

    iput v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1025
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->setVisibleRangeHint(II)V

    .line 1026
    return-object v0
.end method

.method private blacklist fillSpecific(II)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "left"    # I

    .line 1809
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1810
    .local v0, "tempIsSelected":Z
    :goto_0
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1812
    .local v1, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1817
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1818
    .local v2, "dividerHeight":I
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    .line 1819
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    .line 1821
    .local v3, "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1822
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v4

    .line 1823
    .local v4, "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 1824
    .local v5, "childCount":I
    if-lez v5, :cond_1

    .line 1825
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    .line 1827
    .end local v5    # "childCount":I
    :cond_1
    goto :goto_1

    .line 1828
    .end local v3    # "leftSide":Landroid/view/View;
    .end local v4    # "rightSide":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v4

    .line 1830
    .restart local v4    # "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1831
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v3

    .line 1832
    .restart local v3    # "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 1833
    .restart local v5    # "childCount":I
    if-lez v5, :cond_3

    .line 1834
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    .line 1838
    .end local v5    # "childCount":I
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1839
    return-object v1

    .line 1840
    :cond_4
    if-eqz v3, :cond_5

    .line 1841
    return-object v3

    .line 1843
    :cond_5
    return-object v4
.end method

.method private blacklist fillSpecificRTL(II)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "right"    # I

    .line 1847
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1850
    .local v0, "tempIsSelected":Z
    :goto_0
    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1853
    .local v1, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 1858
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1860
    .local v2, "dividerHeight":I
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    .line 1863
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v3

    .line 1864
    .local v3, "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1865
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v4

    .line 1870
    .local v4, "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 1871
    .local v5, "childCount":I
    if-lez v5, :cond_1

    .line 1872
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    .line 1874
    .end local v5    # "childCount":I
    :cond_1
    goto :goto_1

    .line 1876
    .end local v3    # "rightSide":Landroid/view/View;
    .end local v4    # "leftSide":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    move-result-object v4

    .line 1879
    .restart local v4    # "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1880
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v3

    .line 1882
    .restart local v3    # "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 1883
    .restart local v5    # "childCount":I
    if-lez v5, :cond_3

    .line 1884
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    .line 1888
    .end local v5    # "childCount":I
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1889
    return-object v1

    .line 1890
    :cond_4
    if-eqz v4, :cond_5

    .line 1891
    return-object v4

    .line 1893
    :cond_5
    return-object v3
.end method

.method private blacklist getArrowScrollPreviewLength()I
    .locals 2

    .line 3728
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private blacklist getChildCountAndOrder(Landroid/view/View;[BI)J
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # [B
    .param p3, "visibility"    # I

    .line 5328
    const-wide/16 v0, 0x0

    .line 5330
    .local v0, "count":J
    if-nez p1, :cond_0

    .line 5331
    return-wide v0

    .line 5334
    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 5335
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, p3, :cond_1

    .line 5336
    aget-byte v2, p2, v5

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    .line 5338
    :cond_1
    aget-byte v2, p2, v5

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p2, v5

    .line 5340
    return-wide v0

    .line 5343
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 5344
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-ne v6, p3, :cond_3

    .line 5345
    aget-byte v6, p2, v5

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    .line 5347
    :cond_3
    aget-byte v3, p2, v5

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, v5

    .line 5349
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5350
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5351
    .local v4, "v":Landroid/view/View;
    invoke-direct {p0, v4, p2, p3}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 5349
    .end local v4    # "v":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5354
    .end local v3    # "i":I
    :cond_4
    return-wide v0
.end method

.method private blacklist getChildHeightSpec(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 5358
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5360
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 5361
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 5365
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
    .param p1, "child"    # Landroid/view/View;

    .line 5369
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5371
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 5372
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 5377
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5379
    .local v1, "lpWidth":I
    if-lez v1, :cond_1

    .line 5380
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "childWidthSpec":I
    goto :goto_0

    .line 5382
    .end local v2    # "childWidthSpec":I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 5385
    .restart local v2    # "childWidthSpec":I
    :goto_0
    return v2
.end method

.method private blacklist getLeftSelectionPixel(III)I
    .locals 2
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1282
    move v0, p1

    .line 1283
    .local v0, "leftSelectionPixel":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    .line 1284
    :goto_0
    add-int/2addr v0, p2

    .line 1286
    :cond_1
    return v0
.end method

.method private blacklist getRightSelectionPixel(III)I
    .locals 2
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1265
    move v0, p1

    .line 1266
    .local v0, "rightSelectionPixel":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_0

    if-lez p3, :cond_1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_1

    .line 1267
    :goto_0
    sub-int/2addr v0, p2

    .line 1269
    :cond_1
    return v0
.end method

.method private blacklist handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .line 3620
    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 3631
    const/4 v0, 0x0

    .line 3632
    .local v0, "leftSelected":Z
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 3633
    .local v1, "selectedIndex":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v2, p3, v2

    .line 3634
    .local v2, "nextSelectedIndex":I
    const/16 v3, 0x11

    if-ne p2, v3, :cond_0

    .line 3635
    move v3, v2

    .line 3636
    .local v3, "leftViewIndex":I
    move v4, v1

    .line 3637
    .local v4, "rightViewIndex":I
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3638
    .local v5, "leftView":Landroid/view/View;
    move-object v6, p1

    .line 3639
    .local v6, "rightView":Landroid/view/View;
    const/4 v0, 0x1

    goto :goto_0

    .line 3641
    .end local v3    # "leftViewIndex":I
    .end local v4    # "rightViewIndex":I
    .end local v5    # "leftView":Landroid/view/View;
    .end local v6    # "rightView":Landroid/view/View;
    :cond_0
    move v3, v1

    .line 3642
    .restart local v3    # "leftViewIndex":I
    move v4, v2

    .line 3643
    .restart local v4    # "rightViewIndex":I
    move-object v5, p1

    .line 3644
    .restart local v5    # "leftView":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3647
    .restart local v6    # "rightView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v7

    .line 3650
    .local v7, "numChildren":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    .line 3651
    if-nez p4, :cond_1

    if-eqz v0, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 3652
    invoke-direct {p0, v5, v3, v7}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 3656
    :cond_2
    if-eqz v6, :cond_4

    .line 3657
    if-nez p4, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 3658
    invoke-direct {p0, v6, v4, v7}, Landroid/widget/SemHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 3660
    :cond_4
    return-void

    .line 3621
    .end local v0    # "leftSelected":Z
    .end local v1    # "selectedIndex":I
    .end local v2    # "nextSelectedIndex":I
    .end local v3    # "leftViewIndex":I
    .end local v4    # "rightViewIndex":I
    .end local v5    # "leftView":Landroid/view/View;
    .end local v6    # "rightView":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist handleVerticalFocusWithinListItem(I)Z
    .locals 7
    .param p1, "direction"    # I

    .line 3413
    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3414
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3418
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 3419
    .local v0, "numChildren":I
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 3420
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 3421
    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 3424
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 3425
    .local v3, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 3427
    .local v4, "nextFocus":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3429
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3430
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v5}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3431
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3432
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3433
    if-eq v3, v4, :cond_2

    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_2

    .line 3434
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 3436
    :cond_2
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->playSoundEffect(I)V

    .line 3437
    const/4 v2, 0x1

    return v2

    .line 3444
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    .line 3445
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 3444
    invoke-virtual {v5, v6, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3446
    .local v5, "globalNextFocus":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 3447
    invoke-direct {p0, v5, p0}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    return v2

    .line 3451
    .end local v1    # "selectedView":Landroid/view/View;
    .end local v3    # "currentFocus":Landroid/view/View;
    .end local v4    # "nextFocus":Landroid/view/View;
    .end local v5    # "globalNextFocus":Landroid/view/View;
    :cond_4
    return v2
.end method

.method private blacklist isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 2589
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2590
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2591
    .local v1, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 2592
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v4, v4, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v4, :cond_0

    .line 2593
    return v3

    .line 2591
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2597
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2598
    .local v2, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2599
    .local v4, "numFooters":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 2600
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v6, v6, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 2601
    return v3

    .line 2599
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2605
    .end local v5    # "i":I
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 4035
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 4036
    return v0

    .line 4039
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4040
    .local v1, "theParent":Landroid/view/ViewParent;
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
    .param p1, "direction"    # I

    .line 3881
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 3882
    .local v0, "firstPosition":I
    const/4 v1, -0x1

    const/16 v2, 0x42

    if-ne p1, v2, :cond_8

    .line 3883
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v2, v1, :cond_0

    .line 3884
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3885
    :cond_0
    move v2, v0

    :goto_0
    nop

    .line 3886
    .local v2, "startPos":I
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 3887
    return v1

    .line 3889
    :cond_1
    if-ge v2, v0, :cond_2

    .line 3890
    move v2, v0

    .line 3893
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 3894
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3895
    .local v4, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_5

    .line 3896
    move v5, v2

    .local v5, "pos":I
    :goto_1
    if-lt v5, v0, :cond_4

    .line 3897
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 3898
    return v5

    .line 3896
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v5    # "pos":I
    :cond_4
    goto :goto_3

    .line 3903
    :cond_5
    move v5, v2

    .restart local v5    # "pos":I
    :goto_2
    if-gt v5, v3, :cond_7

    .line 3904
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_6

    sub-int v6, v5, v0

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 3905
    return v5

    .line 3903
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3909
    .end local v2    # "startPos":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_7
    :goto_3
    goto/16 :goto_7

    .line 3910
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 3911
    .local v2, "last":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 3912
    .restart local v3    # "lastVisiblePos":I
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eq v4, v1, :cond_9

    .line 3913
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 3914
    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_4
    nop

    .line 3915
    .local v4, "startPos":I
    if-ltz v4, :cond_11

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_a

    goto :goto_8

    .line 3918
    :cond_a
    if-le v4, v2, :cond_b

    .line 3919
    move v4, v2

    .line 3922
    :cond_b
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 3923
    .local v5, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_e

    .line 3924
    move v6, v4

    .local v6, "pos":I
    :goto_5
    if-gt v6, v3, :cond_d

    .line 3925
    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_c

    sub-int v7, v6, v0

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_c

    .line 3926
    return v6

    .line 3924
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v6    # "pos":I
    :cond_d
    goto :goto_7

    .line 3931
    :cond_e
    move v6, v4

    .restart local v6    # "pos":I
    :goto_6
    if-lt v6, v0, :cond_10

    .line 3932
    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_f

    sub-int v7, v6, v0

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_f

    .line 3933
    return v6

    .line 3931
    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 3938
    .end local v2    # "last":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "startPos":I
    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .end local v6    # "pos":I
    :cond_10
    :goto_7
    return v1

    .line 3916
    .restart local v2    # "last":I
    .restart local v3    # "lastVisiblePos":I
    .restart local v4    # "startPos":I
    :cond_11
    :goto_8
    return v1
.end method

.method private blacklist makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z

    .line 2626
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2628
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    .line 2629
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2632
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/SemHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2634
    return-object v0

    .line 2639
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 2643
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2645
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

    .line 2647
    :cond_1
    return-object v0
.end method

.method private blacklist measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .line 3670
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3671
    .local v0, "oldWidth":I
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->measureItem(Landroid/view/View;)V

    .line 3672
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3674
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3677
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3678
    .local v1, "widthDelta":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 3679
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3678
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3682
    .end local v1    # "widthDelta":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist measureItem(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 3690
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3691
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 3692
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 3697
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

    .line 3699
    .local v1, "childHeightSpec":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3701
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 3702
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childWidthSpec":I
    goto :goto_0

    .line 3704
    .end local v3    # "childWidthSpec":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3706
    .restart local v3    # "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    .line 3707
    return-void
.end method

.method private blacklist measureScrapChild(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 1634
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 1635
    .local v0, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-nez v0, :cond_0

    .line 1636
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 1637
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1639
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1640
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    .line 1642
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1644
    .local v1, "childHeightSpec":I
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->width:I

    .line 1646
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 1647
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childWidthSpec":I
    goto :goto_0

    .line 1649
    .end local v3    # "childWidthSpec":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1651
    .restart local v3    # "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V

    .line 1652
    return-void
.end method

.method private blacklist moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 14
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenLeft"    # I
    .param p5, "childrenRight"    # I

    .line 1334
    move-object v6, p0

    move/from16 v7, p4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v8

    .line 1335
    .local v8, "fadingEdgeLength":I
    iget v9, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    .line 1339
    .local v9, "selectedPosition":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/SemHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v10

    .line 1341
    .local v10, "leftSelectionPixel":I
    invoke-direct {p0, v7, v8, v9}, Landroid/widget/SemHorizontalListView;->getRightSelectionPixel(III)I

    move-result v11

    .line 1344
    .local v11, "rightSelectionPixel":I
    if-lez p3, :cond_2

    .line 1366
    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v12

    .line 1369
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    iget v13, v6, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 1372
    .local v13, "dividerHeight":I
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

    .line 1376
    .local v0, "sel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v11, :cond_0

    .line 1379
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    .line 1382
    .local v1, "spaceLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v11

    .line 1385
    .local v2, "spaceRight":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1386
    .local v3, "halfHorizontalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1387
    .local v4, "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1390
    neg-int v5, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1392
    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1396
    .end local v1    # "spaceLeft":I
    .end local v2    # "spaceRight":I
    .end local v3    # "halfHorizontalSpace":I
    .end local v4    # "offset":I
    :cond_0
    iget-boolean v1, v6, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 1397
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1398
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1399
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    goto :goto_0

    .line 1401
    :cond_1
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1402
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1403
    iget v1, v6, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {p0, v1, v2}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1405
    .end local v13    # "dividerHeight":I
    :goto_0
    goto/16 :goto_2

    .end local v0    # "sel":Landroid/view/View;
    .end local v12    # "oldSel":Landroid/view/View;
    .restart local p1    # "oldSel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1426
    if-eqz p2, :cond_3

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1433
    .end local v0    # "sel":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1438
    .restart local v0    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v10, :cond_4

    .line 1440
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v10, v1

    .line 1443
    .restart local v1    # "spaceLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v2, v11, v2

    .line 1446
    .restart local v2    # "spaceRight":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1447
    .restart local v3    # "halfHorizontalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1448
    .restart local v4    # "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1451
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1455
    .end local v1    # "spaceLeft":I
    .end local v2    # "spaceRight":I
    .end local v3    # "halfHorizontalSpace":I
    .end local v4    # "offset":I
    :cond_4
    invoke-direct {p0, v0, v9}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    move-object v12, p1

    goto :goto_2

    .line 1458
    .end local v0    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1463
    .local v12, "oldLeft":I
    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v9

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1466
    .restart local v0    # "sel":Landroid/view/View;
    if-ge v12, v7, :cond_6

    .line 1469
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1470
    .local v1, "newRight":I
    add-int/lit8 v2, v7, 0x14

    if-ge v1, v2, :cond_6

    .line 1472
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1477
    .end local v1    # "newRight":I
    :cond_6
    invoke-direct {p0, v0, v9}, Landroid/widget/SemHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    move-object v12, p1

    .line 1480
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    :goto_2
    return-object v0
.end method

.method private blacklist needToMeasureChild(Landroid/view/View;ZZ)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "updateChildSelected"    # Z
    .param p3, "recycled"    # Z

    .line 5232
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

    .line 5233
    .local v4, "needToMeasure":Z
    :goto_1
    if-eqz v4, :cond_2

    return v2

    .line 5235
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    .line 5237
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mFixedSizeItems:Z

    if-eqz v5, :cond_6

    .line 5243
    const/high16 v5, 0x10000000

    .line 5244
    .local v5, "key":I
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 5246
    .local v6, "listViewItemTag":Ljava/lang/Object;
    if-nez v6, :cond_3

    .line 5247
    new-instance v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalListView$ItemInfoTag;-><init>(Landroid/widget/SemHorizontalListView;)V

    move-object v6, v7

    .line 5248
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5251
    :cond_3
    instance-of v7, v6, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    if-eqz v7, :cond_5

    .line 5253
    move-object v7, v6

    check-cast v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;

    .line 5255
    .local v7, "itemInfoTag":Landroid/widget/SemHorizontalListView$ItemInfoTag;
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v8

    .line 5256
    .local v8, "currentWidthSpec":I
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v9

    .line 5258
    .local v9, "currentHeightSpec":I
    new-array v2, v2, [B

    aput-byte v3, v2, v3

    .line 5259
    .local v2, "offset":[B
    const/16 v10, 0x8

    invoke-direct {p0, v1, v2, v10}, Landroid/widget/SemHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v10

    .line 5260
    .local v10, "currentChildrenVisibilityBitsGone":J
    aget-byte v3, v2, v3

    .line 5262
    .local v3, "currentChildrenNumberTotal":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 5264
    .local v12, "currentConfiguration":Landroid/content/res/Configuration;
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

    .line 5269
    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v13

    if-nez v13, :cond_4

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mLastScrollState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 5272
    const/4 v4, 0x0

    goto :goto_2

    .line 5275
    :cond_4
    iput v8, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mWidthSpec:I

    .line 5276
    iput v9, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mHeightSpec:I

    .line 5277
    iput-wide v10, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    .line 5278
    iput v3, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    .line 5279
    iget-object v13, v7, Landroid/widget/SemHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v12}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5281
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->forceLayout()V

    .line 5283
    const/4 v4, 0x1

    .line 5285
    .end local v2    # "offset":[B
    .end local v3    # "currentChildrenNumberTotal":I
    .end local v7    # "itemInfoTag":Landroid/widget/SemHorizontalListView$ItemInfoTag;
    .end local v8    # "currentWidthSpec":I
    .end local v9    # "currentHeightSpec":I
    .end local v10    # "currentChildrenVisibilityBitsGone":J
    .end local v12    # "currentConfiguration":Landroid/content/res/Configuration;
    :goto_2
    goto :goto_3

    .line 5295
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->forceLayout()V

    .line 5296
    const/4 v4, 0x1

    .line 5300
    .end local v5    # "key":I
    .end local v6    # "listViewItemTag":Ljava/lang/Object;
    :cond_6
    :goto_3
    return v4
.end method

.method private final blacklist nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .line 3487
    const/16 v0, 0x42

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v0, :cond_4

    .line 3488
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 3489
    .local v3, "listRight":I
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v4, v3, :cond_3

    .line 3490
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 3491
    .local v4, "lastPos":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_1

    .line 3492
    if-eq p2, v2, :cond_0

    if-gt p2, v4, :cond_0

    add-int/lit8 v5, p2, -0x1

    goto :goto_0

    :cond_0
    move v5, v4

    .local v5, "nextSelected":I
    :goto_0
    goto :goto_2

    .line 3494
    .end local v5    # "nextSelected":I
    :cond_1
    if-eq p2, v2, :cond_2

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_2

    add-int/lit8 v5, p2, 0x1

    goto :goto_1

    .line 3495
    :cond_2
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :goto_1
    nop

    .line 3496
    .end local v4    # "lastPos":I
    .restart local v5    # "nextSelected":I
    :goto_2
    nop

    .line 3499
    .end local v3    # "listRight":I
    goto :goto_5

    .line 3497
    .end local v5    # "nextSelected":I
    .restart local v3    # "listRight":I
    :cond_3
    return v2

    .line 3500
    .end local v3    # "listRight":I
    :cond_4
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 3501
    .local v3, "listLeft":I
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v4, v3, :cond_b

    .line 3502
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 3503
    .restart local v4    # "lastPos":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_6

    .line 3504
    if-eq p2, v2, :cond_5

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_5

    add-int/lit8 v5, p2, 0x1

    goto :goto_3

    .line 3505
    :cond_5
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    :goto_3
    nop

    .restart local v5    # "nextSelected":I
    goto :goto_4

    .line 3507
    .end local v5    # "nextSelected":I
    :cond_6
    if-eq p2, v2, :cond_7

    if-gt p2, v4, :cond_7

    add-int/lit8 v5, p2, -0x1

    goto :goto_4

    :cond_7
    move v5, v4

    .line 3508
    .end local v4    # "lastPos":I
    .restart local v5    # "nextSelected":I
    :goto_4
    nop

    .line 3513
    .end local v3    # "listLeft":I
    :goto_5
    if-ltz v5, :cond_a

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v5, v3, :cond_8

    goto :goto_7

    .line 3516
    :cond_8
    if-ne p3, v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0, v5, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    .line 3514
    :cond_a
    :goto_7
    return v2

    .line 3509
    .end local v5    # "nextSelected":I
    .restart local v3    # "listLeft":I
    :cond_b
    return v2
.end method

.method private blacklist positionOfNewFocus(Landroid/view/View;)I
    .locals 4
    .param p1, "newFocus"    # Landroid/view/View;

    .line 4020
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 4021
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4022
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4023
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/SemHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4024
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 4021
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4027
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist relayoutMeasuredItem(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 3715
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3716
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3717
    .local v1, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 3718
    .local v2, "childLeft":I
    add-int v3, v2, v0

    .line 3719
    .local v3, "childRight":I
    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3720
    .local v4, "childTop":I
    add-int v5, v4, v1

    .line 3721
    .local v5, "childBottom":I
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 3722
    return-void
.end method

.method private blacklist removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 534
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 535
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 536
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    .line 537
    .local v2, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iget-object v3, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 538
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 539
    goto :goto_1

    .line 535
    .end local v2    # "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist scrollListItemsBy(I)V
    .locals 10
    .param p1, "amount"    # I

    .line 4103
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 4105
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 4106
    .local v0, "listRight":I
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 4107
    .local v1, "listLeft":I
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 4109
    .local v2, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    const/4 v3, 0x0

    if-gez p1, :cond_c

    .line 4113
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    .line 4115
    .local v4, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    .line 4116
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4117
    .local v5, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_3

    .line 4119
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_0

    .line 4120
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 4122
    :cond_0
    if-nez v5, :cond_1

    .line 4123
    return-void

    .line 4124
    :cond_1
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_0

    .line 4129
    .end local v5    # "last":Landroid/view/View;
    :cond_2
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4130
    .restart local v5    # "last":Landroid/view/View;
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_3

    .line 4131
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    .line 4132
    .local v6, "lastVisiblePosition":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_3

    .line 4133
    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 4134
    nop

    .end local v6    # "lastVisiblePosition":I
    add-int/lit8 v4, v4, 0x1

    .line 4138
    goto :goto_1

    .line 4144
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v0, :cond_4

    .line 4145
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 4149
    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4150
    .local v6, "first":Landroid/view/View;
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_5

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4152
    :cond_5
    if-nez v6, :cond_6

    .line 4153
    return-void

    .line 4155
    :cond_6
    iget-boolean v7, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_9

    .line 4156
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 4157
    .local v3, "lastIndex":I
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v7, v1, :cond_8

    .line 4158
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4159
    .local v7, "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v8, v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4160
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, v3

    invoke-virtual {v2, v6, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4162
    :cond_7
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 4163
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4164
    .end local v7    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_2

    .line 4165
    .end local v3    # "lastIndex":I
    :cond_8
    goto :goto_4

    .line 4166
    :cond_9
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v7, v1, :cond_b

    .line 4167
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4168
    .restart local v7    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v8, v7, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4169
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v2, v6, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4171
    :cond_a
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 4172
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4173
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 4174
    .end local v7    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_3

    .line 4176
    .end local v4    # "numChildren":I
    .end local v5    # "last":Landroid/view/View;
    .end local v6    # "first":Landroid/view/View;
    :cond_b
    :goto_4
    goto/16 :goto_a

    .line 4179
    :cond_c
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    .line 4180
    .restart local v4    # "numChildren":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_d

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "first":Landroid/view/View;
    goto :goto_5

    .line 4181
    .end local v5    # "first":Landroid/view/View;
    :cond_d
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4183
    .restart local v5    # "first":Landroid/view/View;
    :goto_5
    iget-boolean v6, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_f

    .line 4184
    :goto_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_11

    .line 4185
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    .line 4186
    .local v6, "lastVisiblePosition":I
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_11

    .line 4187
    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 4188
    if-nez v5, :cond_e

    .line 4189
    return-void

    .line 4190
    :cond_e
    nop

    .end local v6    # "lastVisiblePosition":I
    add-int/lit8 v4, v4, 0x1

    .line 4194
    goto :goto_6

    .line 4197
    :cond_f
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_11

    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_11

    .line 4198
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v5, v6}, Landroid/widget/SemHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 4202
    if-nez v5, :cond_10

    .line 4203
    return-void

    .line 4204
    :cond_10
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    goto :goto_7

    .line 4210
    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_12

    .line 4211
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->semOffsetChildrenLeftAndRight(I)V

    .line 4214
    :cond_12
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 4215
    .local v6, "lastIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4216
    .local v7, "last":Landroid/view/View;
    iget-boolean v8, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v8, :cond_14

    .line 4217
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4218
    :goto_8
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v0, :cond_16

    .line 4219
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4220
    .local v8, "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 4221
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {v2, v7, v9}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4223
    :cond_13
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 4224
    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4225
    iget v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 4227
    .end local v8    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_8

    .line 4231
    :cond_14
    :goto_9
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v0, :cond_16

    .line 4232
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 4233
    .local v3, "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v8, v3, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 4234
    iget v8, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4236
    :cond_15
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 4237
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4238
    .end local v3    # "layoutParams":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_9

    .line 4241
    .end local v4    # "numChildren":I
    .end local v5    # "first":Landroid/view/View;
    .end local v6    # "lastIndex":I
    .end local v7    # "last":Landroid/view/View;
    :cond_16
    :goto_a
    return-void
.end method

.method private blacklist setupChild(Landroid/view/View;IIZIZZ)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flowRightSide"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .line 2666
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    const-wide/16 v5, 0x8

    const-string/jumbo v7, "setupListItem"

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2668
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->shouldShowSelector()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    .line 2669
    .local v9, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v10

    if-eq v9, v10, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v8

    .line 2670
    .local v10, "updateChildSelected":Z
    :goto_1
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mTouchMode:I

    .line 2671
    .local v11, "mode":I
    if-lez v11, :cond_2

    const/4 v12, 0x3

    if-ge v11, v12, :cond_2

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    if-ne v12, v2, :cond_2

    move v12, v7

    goto :goto_2

    :cond_2
    move v12, v8

    .line 2673
    .local v12, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eq v12, v13, :cond_3

    move v13, v7

    goto :goto_3

    :cond_3
    move v13, v8

    .line 2674
    .local v13, "updateChildPressed":Z
    :goto_3
    invoke-direct {v0, v1, v10, v4}, Landroid/widget/SemHorizontalListView;->needToMeasureChild(Landroid/view/View;ZZ)Z

    move-result v14

    .line 2678
    .local v14, "needToMeasure":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 2679
    .local v15, "p":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-nez v15, :cond_4

    .line 2680
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 2682
    :cond_4
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    iput v5, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 2684
    if-eqz v4, :cond_5

    iget-boolean v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    if-eqz v6, :cond_6

    :cond_5
    iget-boolean v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v5, -0x2

    if-eqz v6, :cond_a

    iget v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    if-ne v6, v5, :cond_a

    .line 2686
    :cond_6
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_8

    .line 2687
    if-nez p4, :cond_7

    const/4 v5, -0x1

    goto :goto_4

    :cond_7
    move v5, v8

    :goto_4
    invoke-virtual {v0, v1, v5, v15}, Landroid/widget/SemHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 2689
    :cond_8
    if-eqz p4, :cond_9

    const/4 v5, -0x1

    goto :goto_5

    :cond_9
    move v5, v8

    :goto_5
    invoke-virtual {v0, v1, v5, v15}, Landroid/widget/SemHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 2691
    :cond_a
    iput-boolean v8, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->forceAdd:Z

    .line 2692
    iget v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    if-ne v6, v5, :cond_b

    .line 2693
    iput-boolean v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2695
    :cond_b
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_d

    .line 2696
    if-nez p4, :cond_c

    const/4 v5, -0x1

    goto :goto_6

    :cond_c
    move v5, v8

    :goto_6
    invoke-virtual {v0, v1, v5, v15, v7}, Landroid/widget/SemHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_8

    .line 2698
    :cond_d
    if-eqz p4, :cond_e

    const/4 v5, -0x1

    goto :goto_7

    :cond_e
    move v5, v8

    :goto_7
    invoke-virtual {v0, v1, v5, v15, v7}, Landroid/widget/SemHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2701
    :goto_8
    if-eqz v10, :cond_f

    .line 2702
    invoke-virtual {v1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 2703
    if-eqz v9, :cond_f

    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_f

    .line 2704
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    .line 2707
    :cond_f
    if-eqz v13, :cond_10

    .line 2708
    invoke-virtual {v1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 2711
    :cond_10
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mChoiceMode:I

    if-eqz v5, :cond_12

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v5, :cond_12

    .line 2712
    instance-of v5, v1, Landroid/widget/Checkable;

    if-eqz v5, :cond_11

    .line 2713
    move-object v5, v1

    check-cast v5, Landroid/widget/Checkable;

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_9

    .line 2714
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_12

    .line 2716
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 2720
    :cond_12
    :goto_9
    if-eqz v14, :cond_14

    .line 2721
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget v7, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2723
    .local v5, "childHeightSpec":I
    iget v6, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->width:I

    .line 2725
    .local v6, "lpWidth":I
    if-lez v6, :cond_13

    .line 2726
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, "childWidthSpec":I
    goto :goto_a

    .line 2728
    .end local v7    # "childWidthSpec":I
    :cond_13
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2730
    .restart local v7    # "childWidthSpec":I
    :goto_a
    invoke-virtual {v1, v7, v5}, Landroid/view/View;->measure(II)V

    .line 2731
    .end local v5    # "childHeightSpec":I
    .end local v6    # "lpWidth":I
    .end local v7    # "childWidthSpec":I
    goto :goto_b

    .line 2732
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2735
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2736
    .local v5, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 2739
    .local v6, "h":I
    iget-boolean v7, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_18

    .line 2740
    if-eqz p4, :cond_15

    add-int v7, p3, v5

    goto :goto_c

    :cond_15
    move/from16 v7, p3

    .line 2741
    .local v7, "childRight":I
    :goto_c
    if-eqz p4, :cond_16

    move/from16 v8, p3

    goto :goto_d

    :cond_16
    sub-int v8, p3, v5

    .line 2743
    .local v8, "childLeft":I
    :goto_d
    if-eqz v14, :cond_17

    .line 2745
    move/from16 v18, v9

    .end local v9    # "isSelected":Z
    .local v18, "isSelected":Z
    add-int v9, v3, v6

    .line 2746
    .local v9, "childBottom":I
    invoke-virtual {v1, v8, v3, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 2747
    .end local v9    # "childBottom":I
    goto :goto_f

    .line 2748
    .end local v18    # "isSelected":Z
    .local v9, "isSelected":Z
    :cond_17
    move/from16 v18, v9

    .end local v9    # "isSelected":Z
    .restart local v18    # "isSelected":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2749
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_f

    .line 2753
    .end local v7    # "childRight":I
    .end local v8    # "childLeft":I
    .end local v18    # "isSelected":Z
    .restart local v9    # "isSelected":Z
    :cond_18
    move/from16 v18, v9

    .end local v9    # "isSelected":Z
    .restart local v18    # "isSelected":Z
    if-eqz p4, :cond_19

    move/from16 v7, p3

    goto :goto_e

    :cond_19
    sub-int v7, p3, v5

    :goto_e
    move v8, v7

    .line 2754
    .restart local v8    # "childLeft":I
    add-int v7, v8, v5

    .line 2756
    .restart local v7    # "childRight":I
    if-eqz v14, :cond_1a

    .line 2758
    add-int v9, v3, v6

    .line 2759
    .local v9, "childBottom":I
    invoke-virtual {v1, v8, v3, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 2760
    .end local v9    # "childBottom":I
    goto :goto_f

    .line 2761
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2762
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2766
    :goto_f
    iget-boolean v9, v0, Landroid/widget/SemHorizontalListView;->mCachingStarted:Z

    if-eqz v9, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 2767
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2769
    :cond_1b
    if-eqz v4, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v9, v2, :cond_1c

    .line 2770
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2773
    :cond_1c
    const-wide/16 v16, 0x8

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 2774
    return-void
.end method

.method private blacklist shouldAdjustWidthForDivider(I)Z
    .locals 21
    .param p1, "itemIndex"    # I

    .line 5072
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 5073
    .local v2, "dividerHeight":I
    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 5074
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 5075
    .local v4, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 5076
    .local v7, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v4, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 5077
    .local v8, "drawOverscrollFooter":Z
    :goto_1
    if-lez v2, :cond_2

    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 5079
    .local v9, "drawDividers":Z
    :goto_2
    if-eqz v9, :cond_1c

    .line 5080
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

    .line 5081
    .local v10, "fillForMissingDividers":Z
    :goto_3
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    .line 5082
    .local v11, "itemCount":I
    iget-object v12, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 5083
    .local v12, "headerCount":I
    iget-object v13, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v11, v13

    .line 5084
    .local v13, "footerLimit":I
    if-ge v1, v12, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 5085
    .local v14, "isHeader":Z
    :goto_4
    if-lt v1, v13, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 5086
    .local v15, "isFooter":Z
    :goto_5
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 5087
    .local v5, "headerDividers":Z
    iget-boolean v6, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 5088
    .local v6, "footerDividers":Z
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

    .line 5089
    :cond_8
    move/from16 v17, v2

    .end local v2    # "dividerHeight":I
    .local v17, "dividerHeight":I
    iget-object v2, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5090
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v18, v3

    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v18, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_12

    .line 5091
    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    .line 5092
    .local v3, "isLastItem":Z
    :goto_7
    if-eqz v8, :cond_a

    if-nez v3, :cond_11

    .line 5093
    :cond_a
    add-int/lit8 v0, v1, 0x1

    .line 5097
    .local v0, "nextIndex":I
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

    .line 5099
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

    .line 5101
    :cond_f
    :goto_9
    const/16 v16, 0x1

    return v16

    .line 5097
    :cond_10
    const/16 v16, 0x1

    .line 5102
    :goto_a
    if-eqz v10, :cond_11

    .line 5103
    return v16

    .line 5106
    .end local v0    # "nextIndex":I
    .end local v3    # "isLastItem":Z
    :cond_11
    goto :goto_10

    .line 5107
    :cond_12
    if-eqz v7, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    .line 5108
    .local v0, "start":I
    :goto_b
    if-ne v1, v0, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 5109
    .local v3, "isFirstItem":Z
    :goto_c
    if-nez v3, :cond_1b

    .line 5110
    move/from16 v19, v0

    .end local v0    # "start":I
    .local v19, "start":I
    add-int/lit8 v0, v1, -0x1

    .line 5114
    .local v0, "previousIndex":I
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

    .line 5116
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

    .line 5118
    :cond_19
    :goto_e
    const/16 v16, 0x1

    return v16

    .line 5114
    :cond_1a
    const/16 v16, 0x1

    .line 5119
    :goto_f
    if-eqz v10, :cond_1d

    .line 5120
    return v16

    .line 5109
    .end local v19    # "start":I
    .local v0, "start":I
    :cond_1b
    move/from16 v19, v0

    .end local v0    # "start":I
    .restart local v19    # "start":I
    goto :goto_10

    .line 5079
    .end local v5    # "headerDividers":Z
    .end local v6    # "footerDividers":Z
    .end local v10    # "fillForMissingDividers":Z
    .end local v11    # "itemCount":I
    .end local v12    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "isHeader":Z
    .end local v15    # "isFooter":Z
    .end local v17    # "dividerHeight":I
    .end local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v19    # "start":I
    .local v2, "dividerHeight":I
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_1c
    move/from16 v17, v2

    move-object/from16 v18, v3

    .line 5127
    .end local v2    # "dividerHeight":I
    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "dividerHeight":I
    .restart local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_1d
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist showingLeftFadingEdge()Z
    .locals 7

    .line 778
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 779
    .local v0, "listLeft":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    .line 780
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 781
    .local v2, "rightOfRightChild":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 782
    .local v3, "lastVisiblePosition":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 783
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

    .line 785
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

    .line 793
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 794
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 795
    .local v1, "rightOfRightChild":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 797
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 799
    .local v4, "listRight":I
    iget-boolean v5, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 800
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

    .line 802
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
.method public whitelist addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 603
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 604
    return-void
.end method

.method public whitelist addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    .line 565
    .local v0, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 566
    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 567
    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 568
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 572
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 579
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 583
    :cond_1
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 494
    return-void
.end method

.method public whitelist addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    new-instance v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$FixedViewInfo;-><init>(Landroid/widget/SemHorizontalListView;)V

    .line 455
    .local v0, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 456
    iput-object p2, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 457
    iput-boolean p3, v0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 458
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 462
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 464
    new-instance v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 469
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 473
    :cond_1
    return-void
.end method

.method public whitelist areFooterDividersEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4734
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public whitelist areHeaderDividersEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4704
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method blacklist arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .line 3463
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    .line 3464
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 3465
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 3466
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3468
    :cond_0
    nop

    .line 3470
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    .line 3468
    return v0

    .line 3470
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mInLayout:Z

    .line 3471
    throw v0
.end method

.method protected whitelist canAnimate()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2787
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/SemHorizontalListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4394
    iput-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    .line 4398
    :cond_0
    iget v2, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4399
    .local v2, "dividerHeight":I
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4400
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4401
    .local v5, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 4402
    .local v7, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v5, :cond_2

    move v8, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 4403
    .local v8, "drawOverscrollFooter":Z
    :goto_1
    if-lez v2, :cond_3

    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 4405
    .local v9, "drawDividers":Z
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

    .line 4407
    :cond_5
    :goto_3
    iget-object v10, v0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 4408
    .local v10, "bounds":Landroid/graphics/Rect;
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mPaddingTop:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 4409
    iget v11, v0, Landroid/widget/SemHorizontalListView;->mBottom:I

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mTop:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/SemHorizontalListView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 4411
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v11

    .line 4412
    .local v11, "count":I
    iget-object v12, v0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4413
    .local v12, "headerCount":I
    iget v13, v0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    .line 4414
    .local v13, "itemCount":I
    iget-object v14, v0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    sub-int/2addr v14, v3

    .line 4415
    .local v14, "footerLimit":I
    iget-boolean v15, v0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4416
    .local v15, "headerDividers":Z
    iget-boolean v3, v0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 4417
    .local v3, "footerDividers":Z
    iget v6, v0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 4418
    .local v6, "first":I
    move-object/from16 v17, v5

    .end local v5    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v17, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    iget-boolean v5, v0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 4419
    .local v5, "areAllItemsSelectable":Z
    move/from16 v18, v5

    .end local v5    # "areAllItemsSelectable":Z
    .local v18, "areAllItemsSelectable":Z
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4424
    .local v5, "adapter":Landroid/widget/ListAdapter;
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

    .line 4426
    .local v19, "fillForMissingDividers":Z
    :goto_4
    if-eqz v19, :cond_8

    move/from16 v20, v13

    .end local v13    # "itemCount":I
    .local v20, "itemCount":I
    iget-object v13, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v13, :cond_7

    iget-boolean v13, v0, Landroid/widget/SemHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v13, :cond_7

    .line 4427
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 4428
    move-object/from16 v21, v5

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .local v21, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getCacheColorHint()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 4426
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_7
    move-object/from16 v21, v5

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_5

    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v13    # "itemCount":I
    :cond_8
    move-object/from16 v21, v5

    move/from16 v20, v13

    .line 4430
    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .end local v13    # "itemCount":I
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    :goto_5
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 4432
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 4433
    .local v13, "effectivePaddingLeft":I
    const/16 v22, 0x0

    .line 4434
    .local v22, "effectivePaddingRight":I
    move/from16 v23, v13

    .end local v13    # "effectivePaddingLeft":I
    .local v23, "effectivePaddingLeft":I
    iget v13, v0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    move-object/from16 v24, v5

    .end local v5    # "paint":Landroid/graphics/Paint;
    .local v24, "paint":Landroid/graphics/Paint;
    const/16 v5, 0x22

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_9

    .line 4435
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v5, Landroid/graphics/Rect;->left:I

    .line 4436
    .end local v23    # "effectivePaddingLeft":I
    .restart local v13    # "effectivePaddingLeft":I
    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move/from16 v22, v5

    .end local v22    # "effectivePaddingRight":I
    .local v5, "effectivePaddingRight":I
    goto :goto_6

    .line 4434
    .end local v5    # "effectivePaddingRight":I
    .end local v13    # "effectivePaddingLeft":I
    .restart local v22    # "effectivePaddingRight":I
    .restart local v23    # "effectivePaddingLeft":I
    :cond_9
    move/from16 v13, v23

    .line 4439
    .end local v23    # "effectivePaddingLeft":I
    .restart local v13    # "effectivePaddingLeft":I
    :goto_6
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    move/from16 v23, v13

    .end local v13    # "effectivePaddingLeft":I
    .restart local v23    # "effectivePaddingLeft":I
    iget v13, v0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v5, v13

    sub-int v5, v5, v22

    iget v13, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    add-int/2addr v5, v13

    .line 4440
    .local v5, "listRight":I
    iget-boolean v13, v0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    move/from16 v25, v8

    .end local v8    # "drawOverscrollFooter":Z
    .local v25, "drawOverscrollFooter":Z
    if-nez v13, :cond_20

    .line 4441
    const/4 v13, 0x0

    .line 4444
    .local v13, "right":I
    iget v8, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    .line 4445
    .local v8, "scrollX":I
    if-lez v11, :cond_b

    if-gez v8, :cond_b

    .line 4446
    if-eqz v7, :cond_a

    .line 4447
    move/from16 v27, v13

    const/4 v13, 0x0

    .end local v13    # "right":I
    .local v27, "right":I
    iput v13, v10, Landroid/graphics/Rect;->right:I

    .line 4448
    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 4449
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 4450
    .end local v27    # "right":I
    .restart local v13    # "right":I
    :cond_a
    move/from16 v27, v13

    const/4 v13, 0x0

    .end local v13    # "right":I
    .restart local v27    # "right":I
    if-eqz v9, :cond_c

    .line 4451
    iput v13, v10, Landroid/graphics/Rect;->right:I

    .line 4452
    neg-int v13, v2

    iput v13, v10, Landroid/graphics/Rect;->left:I

    .line 4453
    const/4 v13, -0x1

    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_7

    .line 4445
    .end local v27    # "right":I
    .restart local v13    # "right":I
    :cond_b
    move/from16 v27, v13

    .line 4457
    .end local v13    # "right":I
    .restart local v27    # "right":I
    :cond_c
    :goto_7
    const/4 v13, 0x0

    move/from16 v26, v8

    move/from16 v8, v27

    .end local v27    # "right":I
    .local v8, "right":I
    .local v13, "i":I
    .local v26, "scrollX":I
    :goto_8
    if-ge v13, v11, :cond_1d

    .line 4458
    move-object/from16 v27, v4

    .end local v4    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v27, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    add-int v4, v6, v13

    .line 4459
    .local v4, "itemIndex":I
    if-ge v4, v12, :cond_d

    const/16 v28, 0x1

    goto :goto_9

    :cond_d
    const/16 v28, 0x0

    .line 4460
    .local v28, "isHeader":Z
    :goto_9
    if-lt v4, v14, :cond_e

    const/16 v29, 0x1

    goto :goto_a

    :cond_e
    const/16 v29, 0x0

    .line 4461
    .local v29, "isFooter":Z
    :goto_a
    if-nez v15, :cond_f

    if-nez v28, :cond_10

    :cond_f
    if-nez v3, :cond_11

    if-nez v29, :cond_10

    goto :goto_b

    .line 4457
    .end local v4    # "itemIndex":I
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    :cond_10
    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    goto/16 :goto_11

    .line 4462
    .restart local v4    # "itemIndex":I
    .restart local v28    # "isHeader":Z
    .restart local v29    # "isFooter":Z
    :cond_11
    :goto_b
    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 4463
    .local v30, "child":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v8

    .line 4464
    move/from16 v31, v7

    .end local v7    # "drawOverscrollHeader":Z
    .local v31, "drawOverscrollHeader":Z
    add-int/lit8 v7, v11, -0x1

    if-ne v13, v7, :cond_12

    const/4 v7, 0x1

    goto :goto_c

    :cond_12
    const/4 v7, 0x0

    .line 4466
    .local v7, "isLastItem":Z
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

    .line 4468
    :cond_14
    :goto_d
    move/from16 v32, v5

    .end local v5    # "listRight":I
    .local v32, "listRight":I
    add-int/lit8 v5, v4, 0x1

    .line 4472
    .local v5, "nextIndex":I
    move/from16 v33, v9

    move-object/from16 v9, v21

    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .local v33, "drawDividers":Z
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

    .line 4474
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

    .line 4476
    :cond_19
    :goto_f
    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 4477
    move/from16 v21, v4

    .end local v4    # "itemIndex":I
    .local v21, "itemIndex":I
    add-int v4, v8, v2

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 4478
    invoke-virtual {v0, v1, v10, v13}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    move-object/from16 v4, v24

    goto :goto_11

    .line 4472
    .end local v21    # "itemIndex":I
    .restart local v4    # "itemIndex":I
    :cond_1a
    move/from16 v21, v4

    .line 4479
    .end local v4    # "itemIndex":I
    .restart local v21    # "itemIndex":I
    :goto_10
    if-eqz v19, :cond_1b

    .line 4480
    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 4481
    add-int v4, v8, v2

    iput v4, v10, Landroid/graphics/Rect;->right:I

    .line 4482
    move-object/from16 v4, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_11

    .line 4479
    .end local v4    # "paint":Landroid/graphics/Paint;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1b
    move-object/from16 v4, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    goto :goto_11

    .line 4466
    .end local v32    # "listRight":I
    .end local v33    # "drawDividers":Z
    .local v4, "itemIndex":I
    .local v5, "listRight":I
    .local v9, "drawDividers":Z
    .local v21, "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1c
    move/from16 v32, v5

    move/from16 v33, v9

    move-object/from16 v9, v21

    move/from16 v21, v4

    move-object/from16 v4, v24

    .line 4457
    .end local v5    # "listRight":I
    .end local v7    # "isLastItem":Z
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .end local v28    # "isHeader":Z
    .end local v29    # "isFooter":Z
    .end local v30    # "child":Landroid/view/View;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v32    # "listRight":I
    .restart local v33    # "drawDividers":Z
    :goto_11
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v9

    move-object/from16 v4, v27

    move/from16 v7, v31

    move/from16 v5, v32

    move/from16 v9, v33

    goto/16 :goto_8

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "drawOverscrollHeader":Z
    .end local v32    # "listRight":I
    .end local v33    # "drawDividers":Z
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "listRight":I
    .local v7, "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1d
    move-object/from16 v27, v4

    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .line 4488
    .end local v5    # "listRight":I
    .end local v7    # "drawOverscrollHeader":Z
    .end local v13    # "i":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "drawOverscrollHeader":Z
    .restart local v32    # "listRight":I
    .restart local v33    # "drawDividers":Z
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v7, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    add-int/2addr v5, v7

    .line 4489
    .local v5, "overFooterRight":I
    if-eqz v25, :cond_1f

    add-int v7, v6, v11

    move/from16 v13, v20

    .end local v20    # "itemCount":I
    .local v13, "itemCount":I
    if-ne v7, v13, :cond_1e

    if-le v5, v8, :cond_1e

    .line 4491
    iput v8, v10, Landroid/graphics/Rect;->left:I

    .line 4492
    iput v5, v10, Landroid/graphics/Rect;->right:I

    .line 4493
    move-object/from16 v7, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v7, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_12

    .line 4489
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_1e
    move-object/from16 v7, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v13    # "itemCount":I
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    :cond_1f
    move-object/from16 v7, v17

    move/from16 v13, v20

    .line 4495
    .end local v5    # "overFooterRight":I
    .end local v8    # "right":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v26    # "scrollX":I
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "itemCount":I
    :goto_12
    move-object v6, v7

    goto/16 :goto_1e

    .line 4498
    .end local v13    # "itemCount":I
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "drawOverscrollHeader":Z
    .end local v32    # "listRight":I
    .end local v33    # "drawDividers":Z
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v5, "listRight":I
    .local v7, "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_20
    move-object/from16 v27, v4

    move/from16 v32, v5

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v7, v17

    move/from16 v13, v20

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .end local v5    # "listRight":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v13    # "itemCount":I
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "drawOverscrollHeader":Z
    .restart local v32    # "listRight":I
    .restart local v33    # "drawDividers":Z
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    .line 4500
    .local v5, "scrollX":I
    if-lez v11, :cond_21

    if-eqz v31, :cond_21

    .line 4501
    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 4502
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v10, Landroid/graphics/Rect;->right:I

    .line 4503
    move-object/from16 v8, v27

    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v8, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v8, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_13

    .line 4500
    .end local v8    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_21
    move-object/from16 v8, v27

    .line 4506
    .end local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :goto_13
    if-eqz v31, :cond_22

    const/16 v16, 0x1

    goto :goto_14

    :cond_22
    const/16 v16, 0x0

    :goto_14
    move/from16 v20, v16

    .line 4507
    .local v20, "start":I
    move-object/from16 v27, v8

    move/from16 v8, v16

    .local v8, "i":I
    .restart local v27    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :goto_15
    if-ge v8, v11, :cond_32

    .line 4508
    move/from16 v16, v13

    .end local v13    # "itemCount":I
    .local v16, "itemCount":I
    add-int v13, v6, v8

    .line 4509
    .local v13, "itemIndex":I
    if-ge v13, v12, :cond_23

    const/16 v21, 0x1

    goto :goto_16

    :cond_23
    const/16 v21, 0x0

    .line 4510
    .local v21, "isHeader":Z
    :goto_16
    if-lt v13, v14, :cond_24

    const/16 v24, 0x1

    goto :goto_17

    :cond_24
    const/16 v24, 0x0

    .line 4511
    .local v24, "isFooter":Z
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

    .line 4512
    :cond_27
    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 4513
    .local v28, "child":Landroid/view/View;
    move/from16 v29, v6

    .end local v6    # "first":I
    .local v29, "first":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 4514
    .local v6, "left":I
    if-eqz v33, :cond_30

    move-object/from16 v30, v7

    move/from16 v7, v23

    .end local v23    # "effectivePaddingLeft":I
    .local v7, "effectivePaddingLeft":I
    .local v30, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-le v6, v7, :cond_2f

    .line 4515
    move/from16 v23, v7

    move/from16 v7, v20

    .end local v20    # "start":I
    .local v7, "start":I
    .restart local v23    # "effectivePaddingLeft":I
    if-ne v8, v7, :cond_28

    const/16 v20, 0x1

    goto :goto_19

    :cond_28
    const/16 v20, 0x0

    .line 4516
    .local v20, "isFirstItem":Z
    :goto_19
    move/from16 v34, v7

    .end local v7    # "start":I
    .local v34, "start":I
    add-int/lit8 v7, v13, -0x1

    .line 4520
    .local v7, "previousIndex":I
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

    .line 4522
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

    .line 4524
    :cond_2d
    :goto_1b
    move/from16 v35, v3

    .end local v3    # "footerDividers":Z
    .local v35, "footerDividers":Z
    sub-int v3, v6, v2

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4525
    iput v6, v10, Landroid/graphics/Rect;->right:I

    .line 4530
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v0, v1, v10, v3}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1d

    .line 4520
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    :cond_2e
    move/from16 v35, v3

    .line 4531
    .end local v3    # "footerDividers":Z
    .restart local v35    # "footerDividers":Z
    :goto_1c
    if-eqz v19, :cond_31

    .line 4532
    sub-int v3, v6, v2

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4533
    iput v6, v10, Landroid/graphics/Rect;->right:I

    .line 4534
    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1d

    .line 4514
    .end local v23    # "effectivePaddingLeft":I
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v7, "effectivePaddingLeft":I
    .local v20, "start":I
    :cond_2f
    move/from16 v35, v3

    move/from16 v23, v7

    move/from16 v34, v20

    .end local v3    # "footerDividers":Z
    .end local v7    # "effectivePaddingLeft":I
    .end local v20    # "start":I
    .restart local v23    # "effectivePaddingLeft":I
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    goto :goto_1d

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v7, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "start":I
    :cond_30
    move/from16 v35, v3

    move-object/from16 v30, v7

    move/from16 v34, v20

    .line 4507
    .end local v3    # "footerDividers":Z
    .end local v6    # "left":I
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v13    # "itemIndex":I
    .end local v20    # "start":I
    .end local v21    # "isHeader":Z
    .end local v24    # "isFooter":Z
    .end local v28    # "child":Landroid/view/View;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    :cond_31
    :goto_1d
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v16

    move/from16 v6, v29

    move-object/from16 v7, v30

    move/from16 v20, v34

    move/from16 v3, v35

    goto/16 :goto_15

    .end local v16    # "itemCount":I
    .end local v29    # "first":I
    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v6, "first":I
    .restart local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v13, "itemCount":I
    .restart local v20    # "start":I
    :cond_32
    move/from16 v35, v3

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v16, v13

    move/from16 v34, v20

    .line 4540
    .end local v3    # "footerDividers":Z
    .end local v6    # "first":I
    .end local v7    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v8    # "i":I
    .end local v13    # "itemCount":I
    .end local v20    # "start":I
    .restart local v16    # "itemCount":I
    .restart local v29    # "first":I
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "start":I
    .restart local v35    # "footerDividers":Z
    if-lez v11, :cond_35

    if-lez v5, :cond_35

    .line 4541
    if-eqz v25, :cond_33

    .line 4542
    iget v3, v0, Landroid/widget/SemHorizontalListView;->mRight:I

    .line 4543
    .local v3, "absListRight":I
    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4544
    add-int v6, v3, v5

    iput v6, v10, Landroid/graphics/Rect;->right:I

    .line 4545
    move-object/from16 v6, v30

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v6, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, v6, v10}, Landroid/widget/SemHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 4546
    .end local v3    # "absListRight":I
    goto :goto_1e

    .end local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_33
    move-object/from16 v6, v30

    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_34

    .line 4547
    move/from16 v3, v32

    .end local v32    # "listRight":I
    .local v3, "listRight":I
    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4548
    add-int v7, v3, v2

    iput v7, v10, Landroid/graphics/Rect;->right:I

    .line 4549
    const/4 v7, -0x1

    invoke-virtual {v0, v1, v10, v7}, Landroid/widget/SemHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1e

    .line 4546
    .end local v3    # "listRight":I
    .restart local v32    # "listRight":I
    :cond_34
    move/from16 v3, v32

    .end local v32    # "listRight":I
    .restart local v3    # "listRight":I
    goto :goto_1e

    .line 4540
    .end local v3    # "listRight":I
    .end local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "listRight":I
    :cond_35
    move-object/from16 v6, v30

    move/from16 v3, v32

    .line 4555
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "scrollX":I
    .end local v9    # "adapter":Landroid/widget/ListAdapter;
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "count":I
    .end local v12    # "headerCount":I
    .end local v14    # "footerLimit":I
    .end local v15    # "headerDividers":Z
    .end local v16    # "itemCount":I
    .end local v18    # "areAllItemsSelectable":Z
    .end local v19    # "fillForMissingDividers":Z
    .end local v22    # "effectivePaddingRight":I
    .end local v23    # "effectivePaddingLeft":I
    .end local v29    # "first":I
    .end local v30    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v32    # "listRight":I
    .end local v34    # "start":I
    .end local v35    # "footerDividers":Z
    .restart local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :goto_1e
    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    if-eqz v3, :cond_36

    .line 4556
    invoke-virtual {v3, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 4560
    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4562
    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v3, :cond_37

    .line 4563
    invoke-virtual {v3, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4565
    :cond_37
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3080
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 3081
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 3083
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 3084
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 3087
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/SemHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3090
    .end local v1    # "focused":Landroid/view/View;
    :cond_0
    return v0
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4584
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4585
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 4588
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 4589
    .local v0, "more":Z
    iget-boolean v2, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v2, :cond_1

    .line 4590
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mCachingActive:Z

    .line 4593
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v1, :cond_2

    .line 4594
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 4597
    :cond_2
    return v0
.end method

.method blacklist drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 4611
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4613
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4614
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4615
    return-void
.end method

.method blacklist drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 4366
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 4368
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4369
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4371
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 4372
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 4373
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 4376
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4377
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4379
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4380
    return-void
.end method

.method blacklist drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 4349
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 4351
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4352
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4354
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 4355
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 4356
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 4359
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4360
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4363
    return-void
.end method

.method blacklist fillGap(Z)V
    .locals 4
    .param p1, "rightSide"    # Z

    .line 916
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 917
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_2

    .line 918
    const/4 v2, 0x0

    .line 919
    .local v2, "paddingLeft":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    .line 920
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingLeft()I

    move-result v2

    .line 922
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

    .line 923
    :cond_1
    move v1, v2

    :goto_0
    nop

    .line 924
    .local v1, "startOffset":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 925
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHigh(I)V

    .line 926
    .end local v1    # "startOffset":I
    .end local v2    # "paddingLeft":I
    goto :goto_2

    .line 927
    :cond_2
    const/4 v2, 0x0

    .line 928
    .local v2, "paddingRight":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    .line 929
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 931
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

    .line 932
    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    nop

    .line 933
    .restart local v1    # "startOffset":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 934
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLow(I)V

    .line 936
    .end local v1    # "startOffset":I
    .end local v2    # "paddingRight":I
    :goto_2
    return-void
.end method

.method blacklist fillGapRTL(Z)V
    .locals 4
    .param p1, "rightSide"    # Z

    .line 938
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 940
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_2

    .line 941
    const/4 v2, 0x0

    .line 942
    .local v2, "paddingLeft":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    .line 943
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingLeft()I

    move-result v2

    .line 945
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

    .line 946
    .local v1, "startOffset":I
    :goto_0
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    .line 947
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooLowRTL(I)V

    .line 948
    .end local v1    # "startOffset":I
    .end local v2    # "paddingLeft":I
    goto :goto_2

    .line 949
    :cond_2
    const/4 v2, 0x0

    .line 950
    .local v2, "paddingRight":I
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    .line 951
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 953
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

    .line 955
    .restart local v1    # "startOffset":I
    :goto_1
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Landroid/widget/SemHorizontalListView;->fillLeftRTL(II)Landroid/view/View;

    .line 956
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/SemHorizontalListView;->correctTooHighRTL(I)V

    .line 958
    .end local v1    # "startOffset":I
    .end local v2    # "paddingRight":I
    :goto_2
    return-void
.end method

.method blacklist findMotionRow(I)I
    .locals 4
    .param p1, "x"    # I

    .line 1757
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 1758
    .local v0, "childCount":I
    if-lez v0, :cond_a

    .line 1759
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_5

    .line 1760
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1762
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1763
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 1764
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1761
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_4

    .line 1768
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 1769
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1770
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_3

    .line 1771
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1768
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_4
    goto :goto_4

    .line 1777
    :cond_5
    iget-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_8

    .line 1778
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_7

    .line 1779
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1780
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_6

    .line 1781
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1778
    .end local v2    # "v":Landroid/view/View;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_7
    goto :goto_4

    .line 1785
    :cond_8
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_a

    .line 1786
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1787
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_9

    .line 1788
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1785
    .end local v2    # "v":Landroid/view/View;
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1794
    .end local v1    # "i":I
    :cond_a
    :goto_4
    const/4 v1, -0x1

    return v1
.end method

.method blacklist findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
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

    .line 5043
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 5044
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5047
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5048
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 5050
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5051
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 5053
    if-eqz v2, :cond_0

    .line 5054
    return-object v2

    .line 5047
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5059
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
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

    .line 5022
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 5023
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 5024
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 5025
    if-eqz v0, :cond_0

    .line 5026
    return-object v0

    .line 5029
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/SemHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 5030
    if-eqz v0, :cond_1

    .line 5031
    return-object v0

    .line 5034
    :cond_1
    return-object v0
.end method

.method blacklist findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4944
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4945
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4948
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4949
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4951
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4952
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4954
    if-eqz v2, :cond_0

    .line 4955
    return-object v2

    .line 4948
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4960
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 4926
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4927
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4928
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4929
    if-eqz v0, :cond_0

    .line 4930
    return-object v0

    .line 4932
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4933
    if-eqz v0, :cond_1

    .line 4934
    return-object v0

    .line 4937
    :cond_1
    return-object v0
.end method

.method blacklist findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
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

    .line 4993
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4994
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4997
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4998
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 5000
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5001
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 5003
    if-eqz v2, :cond_0

    .line 5004
    return-object v2

    .line 4997
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5009
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4972
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4973
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 4974
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4975
    if-eqz v0, :cond_0

    .line 4976
    return-object v0

    .line 4979
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/SemHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4980
    if-eqz v0, :cond_1

    .line 4981
    return-object v0

    .line 4984
    :cond_1
    return-object v0
.end method

.method blacklist fullScroll(I)Z
    .locals 4
    .param p1, "direction"    # I

    .line 3372
    const/4 v0, 0x0

    .line 3373
    .local v0, "moved":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x11

    if-ne p1, v3, :cond_1

    .line 3374
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-eqz v3, :cond_3

    .line 3375
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 3376
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 3377
    iput v2, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3378
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3379
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    .line 3381
    :cond_0
    const/4 v0, 0x1

    .line 3382
    .end local v1    # "position":I
    goto :goto_0

    .line 3383
    :cond_1
    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    .line 3384
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v3, v2

    .line 3385
    .local v3, "lastItem":I
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ge v2, v3, :cond_3

    .line 3386
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v2, v3, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 3388
    .restart local v1    # "position":I
    if-ltz v1, :cond_2

    .line 3389
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3390
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3391
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    .line 3393
    :cond_2
    const/4 v0, 0x1

    .line 3397
    .end local v1    # "position":I
    .end local v3    # "lastItem":I
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3398
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    .line 3399
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 3402
    :cond_4
    return v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 656
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2196
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 2198
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public whitelist getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4627
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4659
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public whitelist getFooterViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getHeaderViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 505
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getItemsCanFocus()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4297
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public whitelist getMaxScrollAmount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v1, p0, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4787
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4761
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method blacklist getWidthForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .line 5064
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->getWidthForPosition(I)I

    move-result v0

    .line 5065
    .local v0, "width":I
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalListView;->shouldAdjustWidthForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5066
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 5068
    :cond_0
    return v0
.end method

.method public whitelist isOpaque()Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4317
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

    .line 4318
    :cond_0
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4319
    .local v0, "retValue":Z
    :goto_0
    if-eqz v0, :cond_f

    .line 4321
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_9

    .line 4322
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

    .line 4323
    .local v3, "listRight":I
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4324
    .local v4, "first":Landroid/view/View;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v3, :cond_4

    goto :goto_4

    .line 4327
    :cond_4
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_5
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    .line 4328
    .local v5, "listLeft":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4329
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v5, :cond_6

    goto :goto_3

    .line 4332
    .end local v1    # "last":Landroid/view/View;
    .end local v3    # "listRight":I
    .end local v4    # "first":Landroid/view/View;
    .end local v5    # "listLeft":I
    :cond_6
    goto :goto_8

    .line 4330
    .restart local v1    # "last":Landroid/view/View;
    .restart local v3    # "listRight":I
    .restart local v4    # "first":Landroid/view/View;
    .restart local v5    # "listLeft":I
    :cond_7
    :goto_3
    return v2

    .line 4325
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listLeft":I
    :cond_8
    :goto_4
    return v2

    .line 4333
    .end local v3    # "listRight":I
    .end local v4    # "first":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_a
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    .line 4334
    .local v3, "listLeft":I
    :goto_5
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4335
    .restart local v4    # "first":Landroid/view/View;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v3, :cond_b

    goto :goto_7

    .line 4338
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

    .line 4339
    .local v5, "listRight":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4340
    .restart local v1    # "last":Landroid/view/View;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v5, :cond_f

    .line 4341
    :cond_d
    return v2

    .line 4336
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listRight":I
    :cond_e
    :goto_7
    return v2

    .line 4345
    .end local v3    # "listLeft":I
    .end local v4    # "first":Landroid/view/View;
    :cond_f
    :goto_8
    return v0
.end method

.method protected whitelist layoutChildren()V
    .locals 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2208
    move-object/from16 v7, p0

    iget-boolean v8, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2209
    .local v8, "blockLayoutRequests":Z
    if-eqz v8, :cond_0

    .line 2210
    return-void

    .line 2212
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    .line 2213
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2216
    const/4 v9, 0x0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 2218
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 2220
    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    .line 2221
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 2222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2578
    if-nez v8, :cond_1

    .line 2579
    iput-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2223
    :cond_1
    return-void

    .line 2226
    :cond_2
    :try_start_1
    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move v10, v1

    .line 2227
    .local v10, "childrenLeft":I
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mRight:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v11, v1, v2

    .line 2228
    .local v11, "childrenRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v1

    move v12, v1

    .line 2230
    .local v12, "childCount":I
    const/4 v1, 0x0

    .line 2231
    .local v1, "index":I
    const/4 v2, 0x0

    .line 2234
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 2235
    .local v3, "oldSel":Landroid/view/View;
    const/4 v4, 0x0

    .line 2236
    .local v4, "oldFirst":Landroid/view/View;
    const/4 v5, 0x0

    .line 2239
    .local v5, "newSel":Landroid/view/View;
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    packed-switch v6, :pswitch_data_0

    .line 2254
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    goto :goto_0

    .line 2241
    :pswitch_0
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 2242
    if-ltz v1, :cond_3

    if-ge v1, v12, :cond_3

    .line 2243
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    .line 2270
    :cond_3
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    .line 2250
    :pswitch_1
    move v13, v1

    move v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_1

    .line 2254
    :goto_0
    iget v13, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 2255
    if-ltz v1, :cond_4

    if-ge v1, v12, :cond_4

    .line 2256
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    .line 2260
    :cond_4
    invoke-virtual {v7, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 2262
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    if-ltz v6, :cond_5

    .line 2263
    iget v6, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    sub-int/2addr v6, v13

    move v2, v6

    .line 2267
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

    .line 2270
    .end local v1    # "index":I
    .end local v2    # "delta":I
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "oldFirst":Landroid/view/View;
    .end local v5    # "newSel":Landroid/view/View;
    .local v13, "index":I
    .local v14, "delta":I
    .local v15, "oldSel":Landroid/view/View;
    .local v16, "oldFirst":Landroid/view/View;
    .local v17, "newSel":Landroid/view/View;
    :goto_1
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    move/from16 v18, v1

    .line 2271
    .local v18, "dataChanged":Z
    if-eqz v18, :cond_6

    .line 2272
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->handleDataChanged()V

    .line 2277
    :cond_6
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-nez v1, :cond_8

    .line 2278
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 2279
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2578
    if-nez v8, :cond_7

    .line 2579
    iput-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2280
    :cond_7
    return-void

    .line 2281
    :cond_8
    :try_start_2
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_3e

    .line 2290
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2292
    const/4 v1, 0x0

    .line 2293
    .local v1, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    .line 2294
    .local v2, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v3, -0x1

    .line 2295
    .local v3, "accessibilityFocusPosition":I
    const/4 v4, 0x0

    .line 2299
    .local v4, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    move-object/from16 v19, v5

    .line 2300
    .local v19, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v19, :cond_d

    .line 2301
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v5

    .line 2302
    .local v5, "focusHost":Landroid/view/View;
    if-eqz v5, :cond_d

    .line 2303
    invoke-virtual {v7, v5}, Landroid/widget/SemHorizontalListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 2304
    .local v6, "focusChild":Landroid/view/View;
    if-eq v5, v6, :cond_9

    .line 2305
    const/4 v4, 0x1

    .line 2307
    :cond_9
    if-eqz v6, :cond_c

    .line 2308
    if-eqz v18, :cond_a

    invoke-direct {v7, v6}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 2309
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v20

    if-nez v20, :cond_a

    iget-boolean v9, v7, Landroid/widget/SemHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v9, :cond_b

    .line 2312
    :cond_a
    move-object v2, v5

    .line 2313
    nop

    .line 2314
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    move-object v1, v9

    .line 2319
    :cond_b
    invoke-virtual {v7, v6}, Landroid/widget/SemHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    move v3, v9

    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_2

    .line 2307
    :cond_c
    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    goto :goto_2

    .line 2324
    .end local v5    # "focusHost":Landroid/view/View;
    .end local v6    # "focusChild":Landroid/view/View;
    :cond_d
    move-object v9, v1

    move-object/from16 v21, v2

    move v6, v3

    move/from16 v22, v4

    .end local v1    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v3    # "accessibilityFocusPosition":I
    .end local v4    # "mInsideViewAccFocused":Z
    .local v6, "accessibilityFocusPosition":I
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v21, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v22, "mInsideViewAccFocused":Z
    :goto_2
    const/4 v1, 0x0

    .line 2325
    .local v1, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 2330
    .local v2, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    .line 2331
    .local v5, "focusedChild":Landroid/view/View;
    if-eqz v5, :cond_10

    .line 2337
    if-eqz v18, :cond_e

    invoke-direct {v7, v5}, Landroid/widget/SemHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2338
    :cond_e
    move-object v1, v5

    .line 2340
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 2341
    if-eqz v2, :cond_f

    .line 2343
    invoke-virtual {v2}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2346
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->requestFocus()Z

    move-object v4, v1

    move-object/from16 v23, v2

    goto :goto_3

    .line 2331
    :cond_10
    move-object v4, v1

    move-object/from16 v23, v2

    .line 2351
    .end local v1    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v2    # "focusLayoutRestoreView":Landroid/view/View;
    .local v4, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v23, "focusLayoutRestoreView":Landroid/view/View;
    :goto_3
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    move v3, v1

    .line 2352
    .local v3, "firstPosition":I
    iget-object v1, v7, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object v2, v1

    .line 2353
    .local v2, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    if-eqz v18, :cond_12

    .line 2354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v12, :cond_11

    .line 2355
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v24, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    add-int v4, v3, v1

    invoke-virtual {v2, v0, v4}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2354
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v24

    const/4 v0, 0x1

    goto :goto_4

    .end local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_11
    move-object/from16 v24, v4

    .end local v1    # "i":I
    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    goto :goto_5

    .line 2358
    .end local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :cond_12
    move-object/from16 v24, v4

    .end local v4    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual {v2, v12, v3}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 2362
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->detachAllViewsFromParent()V

    .line 2363
    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 2365
    iget v0, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    packed-switch v0, :pswitch_data_1

    .line 2406
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .local v0, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .local v25, "firstPosition":I
    .local v26, "index":I
    .local v27, "delta":I
    if-nez v12, :cond_1b

    .line 2407
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    goto/16 :goto_8

    .line 2403
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_2
    move-object/from16 v1, p0

    move-object v0, v2

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    move-object v2, v15

    move/from16 v25, v3

    .end local v3    # "firstPosition":I
    .restart local v25    # "firstPosition":I
    move-object/from16 v3, v17

    move/from16 v26, v13

    move-object/from16 v13, v24

    .end local v24    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v26    # "index":I
    move v4, v14

    move-object/from16 v24, v5

    .end local v5    # "focusedChild":Landroid/view/View;
    .local v24, "focusedChild":Landroid/view/View;
    move v5, v10

    move/from16 v27, v14

    move v14, v6

    .end local v6    # "accessibilityFocusPosition":I
    .local v14, "accessibilityFocusPosition":I
    .restart local v27    # "delta":I
    move v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/widget/SemHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    .line 2404
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2374
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_3
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_13

    .line 2375
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2377
    .end local v1    # "sel":Landroid/view/View;
    :cond_13
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 2378
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2397
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_4
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_14

    .line 2398
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2400
    .end local v1    # "sel":Landroid/view/View;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 2401
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2380
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_5
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_15

    .line 2381
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v10}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_6

    .line 2383
    .end local v1    # "sel":Landroid/view/View;
    :cond_15
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v11}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v1

    .line 2384
    .restart local v1    # "sel":Landroid/view/View;
    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2385
    goto/16 :goto_d

    .line 2367
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_6
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    if-eqz v17, :cond_16

    .line 2368
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {v7, v1, v10, v11}, Landroid/widget/SemHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2370
    .end local v1    # "sel":Landroid/view/View;
    :cond_16
    invoke-direct {v7, v10, v11}, Landroid/widget/SemHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    .line 2372
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2387
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .restart local v3    # "firstPosition":I
    .restart local v5    # "focusedChild":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .local v13, "index":I
    .local v14, "delta":I
    .local v24, "focusLayoutRestoreDirectChild":Landroid/view/View;
    :pswitch_7
    move-object v0, v2

    move/from16 v25, v3

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v13, v24

    move-object/from16 v24, v5

    move v14, v6

    .end local v2    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v3    # "firstPosition":I
    .end local v5    # "focusedChild":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .restart local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .local v13, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v14, "accessibilityFocusPosition":I
    .local v24, "focusedChild":Landroid/view/View;
    .restart local v25    # "firstPosition":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_17

    .line 2388
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 2389
    invoke-direct {v7, v11}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_7

    .line 2391
    .end local v1    # "sel":Landroid/view/View;
    :cond_17
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 2392
    invoke-direct {v7, v10}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v1

    .line 2394
    .restart local v1    # "sel":Landroid/view/View;
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->adjustViewsLeftOrRight()V

    .line 2395
    goto/16 :goto_d

    .line 2407
    .end local v1    # "sel":Landroid/view/View;
    :goto_8
    if-eqz v1, :cond_19

    .line 2408
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_18

    .line 2409
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    move v1, v2

    .line 2410
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2411
    invoke-direct {v7, v11}, Landroid/widget/SemHorizontalListView;->fillFromRight(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2412
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2413
    .end local v1    # "sel":Landroid/view/View;
    :cond_18
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2414
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2415
    iget v3, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v3, v2

    invoke-direct {v7, v3, v10}, Landroid/widget/SemHorizontalListView;->fillRightRTL(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2416
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2418
    .end local v1    # "sel":Landroid/view/View;
    :cond_19
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_1a

    .line 2419
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v1, v3

    .line 2420
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2421
    invoke-direct {v7, v10}, Landroid/widget/SemHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2422
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2423
    .end local v1    # "sel":Landroid/view/View;
    :cond_1a
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2424
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 2425
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v7, v2, v11}, Landroid/widget/SemHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2426
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_d

    .line 2430
    .end local v1    # "sel":Landroid/view/View;
    :cond_1b
    iget-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v1, :cond_20

    .line 2431
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_1d

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_1d

    .line 2432
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

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_d

    .line 2433
    .end local v1    # "sel":Landroid/view/View;
    :cond_1d
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_1f

    .line 2434
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

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_d

    .line 2436
    .end local v1    # "sel":Landroid/view/View;
    :cond_1f
    const/4 v1, 0x0

    invoke-direct {v7, v1, v11}, Landroid/widget/SemHorizontalListView;->fillSpecificRTL(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_d

    .line 2440
    .end local v1    # "sel":Landroid/view/View;
    :cond_20
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_22

    iget v1, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_22

    .line 2441
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

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_d

    .line 2442
    .end local v1    # "sel":Landroid/view/View;
    :cond_22
    iget v1, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_24

    .line 2444
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

    .restart local v1    # "sel":Landroid/view/View;
    goto :goto_d

    .line 2446
    .end local v1    # "sel":Landroid/view/View;
    :cond_24
    const/4 v1, 0x0

    invoke-direct {v7, v1, v10}, Landroid/widget/SemHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2454
    .restart local v1    # "sel":Landroid/view/View;
    :goto_d
    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->scrapActiveViews()V

    .line 2456
    const/4 v2, -0x1

    if-eqz v1, :cond_2b

    .line 2459
    iget-boolean v3, v7, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2460
    if-ne v1, v13, :cond_25

    if-eqz v23, :cond_25

    .line 2462
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

    .line 2463
    .local v3, "focusWasTaken":Z
    :goto_e
    if-nez v3, :cond_29

    .line 2467
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    .line 2468
    .local v4, "focused":Landroid/view/View;
    if-eqz v4, :cond_28

    .line 2469
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 2471
    :cond_28
    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2472
    .end local v4    # "focused":Landroid/view/View;
    goto :goto_f

    .line 2473
    :cond_29
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 2474
    iget-object v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2476
    .end local v3    # "focusWasTaken":Z
    :goto_f
    goto :goto_10

    .line 2477
    :cond_2a
    invoke-virtual {v7, v2, v1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2479
    :goto_10
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v7, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    goto :goto_14

    .line 2481
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

    .line 2483
    .local v3, "inTouchMode":Z
    :goto_12
    if-eqz v3, :cond_2f

    .line 2485
    iget v4, v7, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    iget v5, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2486
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_2e

    .line 2487
    iget v5, v7, Landroid/widget/SemHorizontalListView;->mMotionPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2489
    .end local v4    # "child":Landroid/view/View;
    :cond_2e
    goto :goto_13

    :cond_2f
    iget v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_31

    .line 2493
    iget v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2494
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_30

    .line 2495
    iget v5, v7, Landroid/widget/SemHorizontalListView;->mSelectorPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2497
    .end local v4    # "child":Landroid/view/View;
    :cond_30
    goto :goto_13

    .line 2499
    :cond_31
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    .line 2500
    iget-object v4, v7, Landroid/widget/SemHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2505
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz v23, :cond_32

    .line 2506
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    .line 2511
    .end local v3    # "inTouchMode":Z
    :cond_32
    :goto_14
    const/4 v3, 0x0

    if-eqz v19, :cond_39

    .line 2512
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    .line 2513
    .local v4, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v4, :cond_37

    .line 2514
    if-eqz v21, :cond_34

    .line 2515
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2516
    nop

    .line 2517
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 2518
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v9, :cond_33

    if-eqz v2, :cond_33

    .line 2519
    nop

    .line 2520
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    .line 2519
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 2521
    .local v5, "virtualViewId":I
    const/16 v6, 0x40

    invoke-virtual {v2, v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 2523
    nop

    .end local v5    # "virtualViewId":I
    goto :goto_15

    .line 2524
    :cond_33
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_15

    .line 2526
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_34
    if-eq v14, v2, :cond_36

    .line 2528
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v6, v14, v2

    .line 2530
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 2528
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2531
    .local v2, "position":I
    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2532
    .local v5, "restoreView":Landroid/view/View;
    if-eqz v5, :cond_35

    .line 2533
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2535
    .end local v2    # "position":I
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_35
    goto :goto_17

    .line 2526
    :cond_36
    :goto_15
    goto :goto_17

    .line 2536
    :cond_37
    if-eq v14, v2, :cond_39

    .line 2537
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    sub-int v6, v14, v2

    .line 2538
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 2537
    const/4 v5, 0x0

    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2540
    .restart local v2    # "position":I
    if-eqz v22, :cond_38

    .line 2541
    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "restoreView":Landroid/view/View;
    goto :goto_16

    .line 2543
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_38
    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2545
    .restart local v5    # "restoreView":Landroid/view/View;
    :goto_16
    invoke-virtual {v4}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_39

    if-eq v4, v5, :cond_39

    .line 2546
    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2547
    if-eqz v5, :cond_39

    .line 2548
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2556
    .end local v2    # "position":I
    .end local v4    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v5    # "restoreView":Landroid/view/View;
    :cond_39
    :goto_17
    if-eqz v23, :cond_3a

    .line 2557
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 2558
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2561
    :cond_3a
    const/4 v2, 0x0

    iput v2, v7, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 2562
    iput-boolean v2, v7, Landroid/widget/SemHorizontalListView;->mDataChanged:Z

    .line 2563
    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_3b

    .line 2564
    iget-object v2, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2565
    iput-object v3, v7, Landroid/widget/SemHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2567
    :cond_3b
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    .line 2568
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {v7, v2}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2570
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->updateScrollIndicators()V

    .line 2572
    iget v2, v7, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v2, :cond_3c

    .line 2573
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    .line 2576
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2578
    .end local v0    # "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    .end local v1    # "sel":Landroid/view/View;
    .end local v9    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "childrenLeft":I
    .end local v11    # "childrenRight":I
    .end local v12    # "childCount":I
    .end local v13    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v14    # "accessibilityFocusPosition":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v19    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v21    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v22    # "mInsideViewAccFocused":Z
    .end local v23    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v24    # "focusedChild":Landroid/view/View;
    .end local v25    # "firstPosition":I
    .end local v26    # "index":I
    .end local v27    # "delta":I
    if-nez v8, :cond_3d

    .line 2579
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2582
    :cond_3d
    return-void

    .line 2282
    .restart local v10    # "childrenLeft":I
    .restart local v11    # "childrenRight":I
    .restart local v12    # "childCount":I
    .local v13, "index":I
    .local v14, "delta":I
    .restart local v15    # "oldSel":Landroid/view/View;
    .restart local v16    # "oldFirst":Landroid/view/View;
    .restart local v17    # "newSel":Landroid/view/View;
    .restart local v18    # "dataChanged":Z
    :cond_3e
    move/from16 v26, v13

    move/from16 v27, v14

    .end local v13    # "index":I
    .end local v14    # "delta":I
    .restart local v26    # "index":I
    .restart local v27    # "delta":I
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but SemHorizontalListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in SemHorizontalListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2286
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

    .line 2287
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v8    # "blockLayoutRequests":Z
    .end local p0    # "this":Landroid/widget/SemHorizontalListView;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2578
    .end local v10    # "childrenLeft":I
    .end local v11    # "childrenRight":I
    .end local v12    # "childCount":I
    .end local v15    # "oldSel":Landroid/view/View;
    .end local v16    # "oldFirst":Landroid/view/View;
    .end local v17    # "newSel":Landroid/view/View;
    .end local v18    # "dataChanged":Z
    .end local v26    # "index":I
    .end local v27    # "delta":I
    .restart local v8    # "blockLayoutRequests":Z
    .restart local p0    # "this":Landroid/widget/SemHorizontalListView;
    :catchall_0
    move-exception v0

    if-nez v8, :cond_3f

    .line 2579
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/SemHorizontalListView;->mBlockLayoutRequests:Z

    .line 2581
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
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 2930
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2931
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_5

    .line 2935
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2937
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2938
    iget-boolean v3, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 2939
    if-eqz p2, :cond_1

    .line 2940
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2941
    :goto_0
    if-ltz p1, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2942
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 2945
    :cond_1
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2946
    :goto_1
    if-ge p1, v2, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2947
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2952
    :cond_2
    if-eqz p2, :cond_3

    .line 2953
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2954
    :goto_2
    if-ge p1, v2, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2955
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 2958
    :cond_3
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2959
    :goto_3
    if-ltz p1, :cond_4

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2960
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 2965
    :cond_4
    if-ltz p1, :cond_6

    if-lt p1, v2, :cond_5

    goto :goto_4

    .line 2969
    :cond_5
    return p1

    .line 2966
    :cond_6
    :goto_4
    return v1

    .line 2932
    .end local v2    # "count":I
    :cond_7
    :goto_5
    return v1
.end method

.method blacklist lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .line 2985
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2986
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 2991
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2992
    .local v2, "after":I
    if-eq v2, v1, :cond_1

    .line 2993
    return v2

    .line 2997
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 2998
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2999
    iget-boolean v4, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 3000
    if-eqz p3, :cond_3

    .line 3001
    add-int/lit8 v4, p2, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3002
    :goto_0
    if-ge p2, p1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3003
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3005
    :cond_2
    if-lt p2, p1, :cond_9

    .line 3006
    return v1

    .line 3009
    :cond_3
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3010
    :goto_1
    if-le p2, p1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3011
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 3013
    :cond_4
    if-gt p2, p1, :cond_9

    .line 3014
    return v1

    .line 3019
    :cond_5
    if-eqz p3, :cond_7

    .line 3020
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3021
    :goto_2
    if-le p2, p1, :cond_6

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3022
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 3024
    :cond_6
    if-gt p2, p1, :cond_9

    .line 3025
    return v1

    .line 3028
    :cond_7
    add-int/lit8 v4, p2, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3029
    :goto_3
    if-ge p2, p1, :cond_8

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3030
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 3032
    :cond_8
    if-lt p2, p1, :cond_9

    .line 3033
    return v1

    .line 3037
    :cond_9
    return p2

    .line 2987
    .end local v2    # "after":I
    .end local v3    # "count":I
    :cond_a
    :goto_4
    return v1
.end method

.method final blacklist measureWidthOfChildren(IIIII)I
    .locals 16
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 1693
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1694
    .local v3, "adapter":Landroid/widget/ListAdapter;
    if-nez v3, :cond_0

    .line 1695
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    return v4

    .line 1699
    :cond_0
    iget-object v4, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 1700
    .local v4, "returnedWidth":I
    iget v5, v0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    if-lez v5, :cond_1

    iget-object v6, v0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1703
    .local v5, "dividerHeight":I
    :goto_0
    const/4 v6, 0x0

    .line 1708
    .local v6, "prevWidthWithoutPartialChild":I
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

    .line 1709
    .end local p3    # "endPosition":I
    .local v8, "endPosition":I
    iget-object v9, v0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 1710
    .local v9, "recycleBin":Landroid/widget/SemHorizontalAbsListView$RecycleBin;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v10

    .line 1711
    .local v10, "recyle":Z
    iget-object v11, v0, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    .line 1713
    .local v11, "isScrap":[Z
    move/from16 v12, p2

    .local v12, "i":I
    :goto_2
    if-gt v12, v8, :cond_9

    .line 1714
    invoke-virtual {v0, v12, v11}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1716
    .local v13, "child":Landroid/view/View;
    move/from16 v14, p1

    invoke-direct {v0, v13, v12, v14}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1718
    if-lez v12, :cond_4

    .line 1720
    iget-boolean v15, v0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v15, :cond_3

    .line 1721
    sub-int/2addr v4, v5

    goto :goto_3

    .line 1723
    :cond_3
    add-int/2addr v4, v5

    .line 1727
    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    .line 1728
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1727
    invoke-virtual {v9, v15}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1729
    invoke-virtual {v9, v13, v7}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1732
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v4, v15

    .line 1734
    if-lt v4, v1, :cond_7

    .line 1740
    if-ltz v2, :cond_6

    if-le v12, v2, :cond_6

    if-lez v6, :cond_6

    if-eq v4, v1, :cond_6

    .line 1741
    move v7, v6

    goto :goto_4

    .line 1742
    :cond_6
    move v7, v1

    .line 1737
    :goto_4
    return v7

    .line 1745
    :cond_7
    if-ltz v2, :cond_8

    if-lt v12, v2, :cond_8

    .line 1746
    move v6, v4

    .line 1713
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1752
    .end local v13    # "child":Landroid/view/View;
    :cond_9
    move/from16 v14, p1

    return v4
.end method

.method protected whitelist onFinishInflate()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4906
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->onFinishInflate()V

    .line 4908
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 4909
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 4910
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4911
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalListView;->addHeaderView(Landroid/view/View;)V

    .line 4910
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4913
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->removeAllViews()V

    .line 4915
    :cond_1
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4813
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4815
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4816
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    .line 4817
    .local v1, "closetChildIndex":I
    const/4 v2, 0x0

    .line 4818
    .local v2, "closestChildLeft":I
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 4819
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 4823
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 4824
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 4825
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 4830
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 4831
    .local v3, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 4832
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 4833
    .local v5, "childCount":I
    iget v6, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    .line 4835
    .local v6, "firstPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_3

    .line 4837
    add-int v8, v6, v7

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4838
    goto :goto_1

    .line 4841
    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4842
    .local v8, "other":Landroid/view/View;
    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4843
    invoke-virtual {p0, v8, v3}, Landroid/widget/SemHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4844
    invoke-static {p3, v3, p2}, Landroid/widget/SemHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    .line 4846
    .local v9, "distance":I
    if-ge v9, v4, :cond_2

    .line 4847
    move v4, v9

    .line 4848
    move v1, v7

    .line 4849
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4835
    .end local v8    # "other":Landroid/view/View;
    .end local v9    # "distance":I
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4854
    .end local v3    # "otherRect":Landroid/graphics/Rect;
    .end local v4    # "minDistance":I
    .end local v5    # "childCount":I
    .end local v6    # "firstPosition":I
    .end local v7    # "i":I
    :cond_3
    if-ltz v1, :cond_4

    .line 4855
    iget v3, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    goto :goto_2

    .line 4857
    :cond_4
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 4860
    :goto_2
    if-eqz p1, :cond_5

    iget-object v3, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v3, :cond_5

    .line 4861
    new-instance v3, Landroid/widget/SemHorizontalListView$2;

    invoke-direct {v3, p0}, Landroid/widget/SemHorizontalListView$2;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 4867
    :cond_5
    return-void
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5161
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5162
    const-class v0, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 5163
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5201
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5202
    const-class v0, Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 5204
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    .line 5205
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getSelectionModeForAccessibility()I

    move-result v1

    .line 5206
    .local v1, "selectionMode":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 5207
    .local v2, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 5208
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5220
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 5222
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 5223
    .local v0, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
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

    .line 5224
    .local v6, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalListView;->isItemChecked(I)Z

    move-result v1

    .line 5225
    .local v1, "isSelected":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v4, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    .line 5227
    .local v2, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 5228
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2144
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2146
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3155
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/SemHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1584
    move-object v6, p0

    move/from16 v7, p2

    invoke-super/range {p0 .. p2}, Landroid/widget/SemHorizontalAbsListView;->onMeasure(II)V

    .line 1586
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1587
    .local v8, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1588
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1589
    .local v0, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1591
    .local v1, "heightSize":I
    const/4 v2, 0x0

    .line 1592
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .line 1593
    .local v3, "childHeight":I
    const/4 v4, 0x0

    .line 1595
    .local v4, "childState":I
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

    .line 1596
    iget v5, v6, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-lez v5, :cond_2

    if-eqz v8, :cond_1

    if-nez v9, :cond_2

    .line 1598
    :cond_1
    iget-object v5, v6, Landroid/widget/SemHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v10, v5}, Landroid/widget/SemHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v5

    .line 1600
    .local v5, "child":Landroid/view/View;
    invoke-direct {p0, v5, v10, v7}, Landroid/widget/SemHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1602
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1603
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1604
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v10

    invoke-static {v4, v10}, Landroid/widget/SemHorizontalListView;->combineMeasuredStates(II)I

    move-result v4

    .line 1606
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->recycleOnMeasure()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v6, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 1607
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v11, v11, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1606
    invoke-virtual {v10, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1608
    iget-object v10, v6, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    const/4 v11, -0x1

    invoke-virtual {v10, v5, v11}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1612
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    move v10, v2

    move v11, v3

    move v12, v4

    .end local v2    # "childWidth":I
    .end local v3    # "childHeight":I
    .end local v4    # "childState":I
    .local v10, "childWidth":I
    .local v11, "childHeight":I
    .local v12, "childState":I
    if-nez v9, :cond_3

    .line 1613
    iget-object v2, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, v11

    .line 1614
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v3

    add-int/2addr v2, v3

    move v13, v2

    .end local v1    # "heightSize":I
    .local v2, "heightSize":I
    goto :goto_1

    .line 1616
    .end local v2    # "heightSize":I
    .restart local v1    # "heightSize":I
    :cond_3
    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    or-int/2addr v2, v1

    move v13, v2

    .line 1619
    .end local v1    # "heightSize":I
    .local v13, "heightSize":I
    :goto_1
    if-nez v8, :cond_4

    .line 1620
    iget-object v1, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v6, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    .line 1621
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    move v14, v0

    goto :goto_2

    .line 1619
    :cond_4
    move v14, v0

    .line 1624
    .end local v0    # "widthSize":I
    .local v14, "widthSize":I
    :goto_2
    const/high16 v0, -0x80000000

    if-ne v8, v0, :cond_5

    .line 1626
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v1, p2

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SemHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v14

    .line 1629
    :cond_5
    invoke-virtual {p0, v14, v13}, Landroid/widget/SemHorizontalListView;->setMeasuredDimension(II)V

    .line 1630
    iput v7, v6, Landroid/widget/SemHorizontalListView;->mHeightMeasureSpec:I

    .line 1631
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1513
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1514
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1515
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1516
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1517
    .local v1, "childPosition":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1518
    .local v2, "childRight":I
    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    sub-int v4, p1, v4

    sub-int v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1520
    .local v3, "offset":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .local v4, "left":I
    goto :goto_0

    .line 1521
    .end local v4    # "left":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1522
    .restart local v4    # "left":I
    :goto_0
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    if-nez v5, :cond_1

    .line 1523
    new-instance v5, Landroid/widget/SemHorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/SemHorizontalListView$FocusSelector;-><init>(Landroid/widget/SemHorizontalListView;Landroid/widget/SemHorizontalListView$FocusSelector-IA;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    .line 1525
    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalListView;->mFocusSelector:Landroid/widget/SemHorizontalListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/SemHorizontalListView$FocusSelector;->setup(II)Landroid/widget/SemHorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 1528
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "childPosition":I
    .end local v2    # "childRight":I
    .end local v3    # "offset":I
    .end local v4    # "left":I
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->onSizeChanged(IIII)V

    .line 1529
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2171
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2173
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4884
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onWindowFocusChanged(Z)V

    .line 4886
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    if-eqz v0, :cond_0

    .line 4887
    new-instance v0, Landroid/widget/SemHorizontalListView$3;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalListView$3;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 4893
    :cond_0
    return-void
.end method

.method blacklist pageScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 3325
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    .line 3326
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3327
    .local v2, "nextPage":I
    const/4 v3, 0x0

    .local v3, "rightSide":Z
    goto :goto_0

    .line 3328
    .end local v2    # "nextPage":I
    .end local v3    # "rightSide":Z
    :cond_0
    const/16 v2, 0x42

    if-ne p1, v2, :cond_5

    .line 3329
    iget v2, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3330
    .restart local v2    # "nextPage":I
    const/4 v3, 0x1

    .line 3335
    .restart local v3    # "rightSide":Z
    :goto_0
    if-ltz v2, :cond_4

    .line 3336
    iget v4, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/SemHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    .line 3337
    .local v4, "position":I
    if-ltz v4, :cond_4

    .line 3338
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3339
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    .line 3341
    if-eqz v3, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v0, v5

    if-le v4, v0, :cond_1

    .line 3342
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3345
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 3346
    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3349
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalListView;->setSelectionInt(I)V

    .line 3350
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invokeOnItemScrollListener()V

    .line 3351
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3352
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 3355
    :cond_3
    return v1

    .line 3359
    .end local v4    # "position":I
    :cond_4
    return v0

    .line 3332
    .end local v2    # "nextPage":I
    .end local v3    # "rightSide":Z
    :cond_5
    return v0
.end method

.method protected blacklist recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .line 1661
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 634
    :cond_0
    const/4 v0, 0x1

    .line 636
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 637
    return v0

    .line 639
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 525
    :cond_0
    const/4 v0, 0x1

    .line 527
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/SemHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 528
    return v0

    .line 530
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 835
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 838
    .local v0, "rectLeftWithinChild":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 841
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v1

    .line 842
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getScrollX()I

    move-result v2

    .line 843
    .local v2, "listUnfadedLeft":I
    add-int v3, v2, v1

    .line 844
    .local v3, "listUnfadedRight":I
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 846
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingLeftFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 848
    iget v5, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    if-gtz v5, :cond_0

    if-le v0, v4, :cond_1

    .line 849
    :cond_0
    add-int/2addr v2, v4

    .line 853
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 854
    .local v5, "childCount":I
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    .line 856
    .local v6, "rightOfRightChild":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalListView;->showingRightFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 858
    iget v7, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_2

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_3

    .line 860
    :cond_2
    sub-int/2addr v3, v4

    .line 864
    :cond_3
    const/4 v7, 0x0

    .line 866
    .local v7, "scrollXDelta":I
    iget v9, p2, Landroid/graphics/Rect;->right:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_6

    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-le v9, v2, :cond_6

    .line 871
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v9, v1, :cond_4

    .line 873
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_0

    .line 876
    :cond_4
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    .line 880
    :goto_0
    sub-int v9, v6, v3

    .line 881
    .local v9, "distanceToRight":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 882
    .end local v9    # "distanceToRight":I
    :cond_5
    goto :goto_2

    :cond_6
    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-ge v9, v2, :cond_5

    iget v9, p2, Landroid/graphics/Rect;->right:I

    if-ge v9, v3, :cond_5

    .line 887
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v9, v1, :cond_7

    .line 889
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_1

    .line 892
    :cond_7
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    .line 896
    :goto_1
    invoke-virtual {p0, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 897
    .local v9, "left":I
    sub-int v11, v9, v2

    .line 898
    .local v11, "deltaToLeft":I
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 901
    .end local v9    # "left":I
    .end local v11    # "deltaToLeft":I
    :goto_2
    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move v8, v10

    .line 902
    .local v8, "scroll":Z
    :goto_3
    if-eqz v8, :cond_9

    .line 903
    neg-int v9, v7

    invoke-direct {p0, v9}, Landroid/widget/SemHorizontalListView;->scrollListItemsBy(I)V

    .line 904
    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/SemHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 905
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/SemHorizontalListView;->mSelectedLeft:I

    .line 906
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 908
    :cond_9
    return v8
.end method

.method blacklist resetList()V
    .locals 1

    .line 752
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 753
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 755
    invoke-super {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 758
    return-void
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 690
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 694
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->resetList()V

    .line 695
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    .line 697
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1

    .line 698
    :cond_2
    :goto_0
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 703
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mOldSelectedPosition:I

    .line 704
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mOldSelectedRowId:J

    .line 706
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 707
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 708
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mOldItemCount:I

    .line 709
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    .line 710
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkFocus()V

    .line 712
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 713
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 715
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 718
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 719
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    .line 720
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_2

    .line 722
    .end local v0    # "position":I
    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_2

    .line 724
    .end local v0    # "position":I
    :cond_4
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_5

    .line 725
    invoke-virtual {p0, v2, v2}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_2

    .line 726
    .end local v0    # "position":I
    :cond_5
    invoke-virtual {p0, v2, v1}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 728
    .restart local v0    # "position":I
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelectedPositionInt(I)V

    .line 729
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 731
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mItemCount:I

    if-nez v1, :cond_6

    .line 733
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    .line 735
    .end local v0    # "position":I
    :cond_6
    goto :goto_3

    .line 736
    :cond_7
    iput-boolean v1, p0, Landroid/widget/SemHorizontalListView;->mAreAllItemsSelectable:Z

    .line 737
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkFocus()V

    .line 739
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->checkSelectionChanged()V

    .line 742
    :goto_3
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 743
    return-void
.end method

.method public blacklist setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .line 182
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .line 183
    return-void
.end method

.method public whitelist setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4640
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4641
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    goto :goto_0

    .line 4643
    :cond_0
    iput v0, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4645
    :goto_0
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4646
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mDividerIsOpaque:Z

    .line 4647
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 4648
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4649
    return-void
.end method

.method public whitelist setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4672
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4673
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 4674
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4675
    return-void
.end method

.method public blacklist setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    .line 187
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setChildrenDrawingOrderEnabled(Z)V

    .line 189
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mDndListAnimator:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    new-instance v1, Landroid/widget/SemHorizontalListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalListView$1;-><init>(Landroid/widget/SemHorizontalListView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    .line 195
    return-void
.end method

.method public whitelist setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4720
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mFooterDividersEnabled:Z

    .line 4721
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4722
    return-void
.end method

.method public whitelist setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4690
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4691
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4692
    return-void
.end method

.method public whitelist setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4282
    iput-boolean p1, p0, Landroid/widget/SemHorizontalListView;->mItemsCanFocus:Z

    .line 4283
    if-nez p1, :cond_0

    .line 4284
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setDescendantFocusability(I)V

    .line 4286
    :cond_0
    return-void
.end method

.method public whitelist setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4775
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4776
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4777
    return-void
.end method

.method public whitelist setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4747
    iput-object p1, p0, Landroid/widget/SemHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4748
    iget v0, p0, Landroid/widget/SemHorizontalListView;->mScrollX:I

    if-gez v0, :cond_0

    .line 4749
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 4751
    :cond_0
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 670
    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2802
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->setSelectionFromStart(II)V

    .line 2803
    return-void
.end method

.method public whitelist setSelectionAfterHeaderView()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3048
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3049
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 3050
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    .line 3051
    return-void

    .line 3054
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 3055
    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setSelection(I)V

    goto :goto_0

    .line 3057
    :cond_1
    iput v0, p0, Landroid/widget/SemHorizontalListView;->mNextSelectedPosition:I

    .line 3058
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 3061
    :goto_0
    return-void
.end method

.method public whitelist setSelectionFromStart(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2859
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 2860
    return-void

    .line 2863
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2864
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2865
    if-ltz p1, :cond_2

    .line 2866
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2869
    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    .line 2872
    :cond_2
    :goto_0
    if-ltz p1, :cond_6

    .line 2873
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 2874
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    goto :goto_1

    .line 2875
    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    .line 2877
    :goto_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    .line 2878
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    .line 2879
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mSyncRowId:J

    .line 2882
    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    .line 2883
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2885
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 2887
    :cond_6
    return-void
.end method

.method public blacklist setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .line 2816
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 2817
    return-void

    .line 2820
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2821
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/SemHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2822
    if-ltz p1, :cond_2

    .line 2823
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2826
    :cond_1
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mResurrectToPosition:I

    .line 2829
    :cond_2
    :goto_0
    if-ltz p1, :cond_6

    .line 2830
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mLayoutMode:I

    .line 2831
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    goto :goto_1

    .line 2832
    :cond_3
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/SemHorizontalListView;->mSpecificTop:I

    .line 2834
    :goto_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    .line 2835
    iput p1, p0, Landroid/widget/SemHorizontalListView;->mSyncPosition:I

    .line 2836
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SemHorizontalListView;->mSyncRowId:J

    .line 2839
    :cond_4
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    .line 2840
    iget-object v0, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2842
    :cond_5
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->requestLayout()V

    .line 2844
    :cond_6
    return-void
.end method

.method blacklist setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .line 2896
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2897
    const/4 v0, 0x0

    .line 2899
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/SemHorizontalListView;->mSelectedPosition:I

    .line 2901
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_1

    .line 2902
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_0

    .line 2903
    const/4 v0, 0x1

    goto :goto_0

    .line 2904
    :cond_0
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_1

    .line 2905
    const/4 v0, 0x1

    .line 2909
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_2

    .line 2910
    iget-object v2, p0, Landroid/widget/SemHorizontalListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2913
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->layoutChildren()V

    .line 2915
    if-eqz v0, :cond_3

    .line 2916
    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->awakenScrollBars()Z

    .line 2918
    :cond_3
    return-void
.end method

.method blacklist shouldCorrectTooHigh()Z
    .locals 1

    .line 1897
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1312
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollByOffset(I)V

    .line 1313
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1299
    invoke-super {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 1300
    return-void
.end method
