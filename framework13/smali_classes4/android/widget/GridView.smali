.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final whitelist AUTO_FIT:I = -0x1

.field public static final whitelist NO_STRETCH:I = 0x0

.field public static final whitelist STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final whitelist STRETCH_SPACING:I = 0x1

.field public static final whitelist STRETCH_SPACING_UNIFORM:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "GridView"


# instance fields
.field private blacklist mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field private greylist-max-p mColumnWidth:I

.field private blacklist mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

.field private greylist-max-o mGravity:I

.field private greylist mHorizontalSpacing:I

.field private greylist-max-p mNumColumns:I

.field private greylist-max-o mReferenceView:Landroid/view/View;

.field private greylist-max-o mReferenceViewInSelectedRow:Landroid/view/View;

.field private greylist mRequestedColumnWidth:I

.field private greylist mRequestedHorizontalSpacing:I

.field private greylist-max-p mRequestedNumColumns:I

.field private greylist-max-o mStretchMode:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist mVerticalSpacing:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDndGridAnimator(Landroid/widget/GridView;)Lcom/samsung/android/animation/SemDragAndDropGridAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 157
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 162
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 128
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 130
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 138
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 139
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 141
    const v3, 0x800003

    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    .line 143
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 167
    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 169
    .local v3, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 172
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 174
    .local v5, "hSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 176
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 178
    .local v6, "vSpacing":I
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 180
    const/4 v7, 0x3

    invoke-virtual {v3, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 181
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 182
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 185
    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 186
    .local v7, "columnWidth":I
    if-lez v7, :cond_1

    .line 187
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 190
    :cond_1
    const/4 v8, 0x5

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 191
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 193
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 194
    .end local v2    # "index":I
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 195
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setGravity(I)V

    .line 198
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    return-void
.end method

.method private greylist-max-o adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 861
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    .line 865
    .local v0, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, p3

    .line 866
    .local v1, "spaceBelow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 869
    .local v2, "offset":I
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 871
    .end local v0    # "spaceAbove":I
    .end local v1    # "spaceBelow":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private greylist-max-o adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 3
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .line 885
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p2, v0

    .line 892
    .local v0, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p3, v1

    .line 893
    .local v1, "spaceBelow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 896
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 898
    .end local v0    # "spaceAbove":I
    .end local v1    # "spaceBelow":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .locals 5

    .line 2506
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2508
    .local v0, "childCount":I
    if-lez v0, :cond_4

    .line 2512
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 2515
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2516
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 2517
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2520
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2522
    :cond_0
    if-gez v2, :cond_3

    .line 2524
    const/4 v2, 0x0

    goto :goto_0

    .line 2528
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2529
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 2531
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_2

    .line 2534
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2537
    :cond_2
    if-lez v2, :cond_3

    .line 2539
    const/4 v2, 0x0

    .line 2543
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 2544
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2547
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1868
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1869
    return v1

    .line 1872
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1873
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1876
    :cond_1
    const/4 v0, 0x0

    .line 1877
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1878
    .local v2, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1879
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 1880
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 1881
    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1882
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1883
    const/4 v0, 0x1

    .line 1887
    :cond_2
    iget-boolean v3, p0, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    if-eqz v3, :cond_3

    .line 1888
    iput-boolean v1, p0, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    .line 1889
    const-string v3, "GridView"

    const-string/jumbo v5, "mIsHoveredByMouse false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_3
    if-nez v0, :cond_29

    if-eq v2, v4, :cond_29

    .line 1894
    const/16 v3, 0x82

    const/16 v5, 0x21

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1e

    .line 1958
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1959
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v4

    :goto_1
    move v0, v3

    goto/16 :goto_1e

    .line 1952
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1953
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v4

    :goto_3
    move v0, v3

    goto/16 :goto_1e

    .line 1944
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1945
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move v3, v1

    goto :goto_5

    :cond_9
    :goto_4
    move v3, v4

    :goto_5
    move v0, v3

    goto/16 :goto_1e

    .line 1946
    :cond_a
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1947
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    move v3, v1

    goto :goto_7

    :cond_c
    :goto_6
    move v3, v4

    :goto_7
    move v0, v3

    goto/16 :goto_1e

    .line 1936
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1937
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v3, v1

    goto :goto_9

    :cond_e
    :goto_8
    move v3, v4

    :goto_9
    move v0, v3

    goto/16 :goto_1e

    .line 1938
    :cond_f
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1939
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    move v3, v1

    goto :goto_b

    :cond_11
    :goto_a
    move v3, v4

    :goto_b
    move v0, v3

    goto/16 :goto_1e

    .line 1969
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1970
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1971
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_c

    :cond_12
    move v3, v1

    goto :goto_d

    :cond_13
    :goto_c
    move v3, v4

    :goto_d
    move v0, v3

    goto/16 :goto_1e

    .line 1972
    :cond_14
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1973
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1974
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_e

    :cond_15
    move v3, v1

    goto :goto_f

    :cond_16
    :goto_e
    move v3, v4

    :goto_f
    move v0, v3

    goto/16 :goto_1e

    .line 1905
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1907
    :cond_17
    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    .line 1909
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_19

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_10

    :cond_18
    move v3, v1

    goto :goto_11

    :cond_19
    :goto_10
    move v3, v4

    :goto_11
    move v0, v3

    goto/16 :goto_1e

    .line 1896
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1898
    :cond_1a
    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    .line 1900
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1c

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_12

    :cond_1b
    move v3, v1

    goto :goto_13

    :cond_1c
    :goto_12
    move v3, v4

    :goto_13
    move v0, v3

    goto/16 :goto_1e

    .line 1925
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_16

    .line 1930
    :cond_1d
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1931
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_14

    :cond_1e
    move v3, v1

    goto :goto_15

    :cond_1f
    :goto_14
    move v3, v4

    :goto_15
    move v0, v3

    goto/16 :goto_1e

    .line 1927
    :cond_20
    :goto_16
    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    .line 1929
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_17

    :cond_21
    move v3, v1

    goto :goto_18

    :cond_22
    :goto_17
    move v3, v4

    :goto_18
    move v0, v3

    goto :goto_1e

    .line 1914
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_1b

    .line 1919
    :cond_23
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1920
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_19

    :cond_24
    move v3, v1

    goto :goto_1a

    :cond_25
    :goto_19
    move v3, v4

    :goto_1a
    move v0, v3

    goto :goto_1e

    .line 1916
    :cond_26
    :goto_1b
    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    .line 1918
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_1c

    :cond_27
    move v3, v1

    goto :goto_1d

    :cond_28
    :goto_1c
    move v3, v4

    :goto_1d
    move v0, v3

    .line 1980
    :cond_29
    :goto_1e
    if-eqz v0, :cond_2a

    .line 1981
    return v4

    .line 1984
    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1985
    return v4

    .line 1988
    :cond_2b
    packed-switch v2, :pswitch_data_0

    .line 1996
    return v1

    .line 1994
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1992
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1990
    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

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

.method private greylist-max-o correctTooHigh(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .line 669
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 670
    .local v0, "lastPosition":I
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    if-lez p3, :cond_3

    .line 672
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 675
    .local v2, "lastChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 677
    .local v3, "lastBottom":I
    iget v4, p0, Landroid/widget/GridView;->mBottom:I

    iget v5, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 681
    .local v4, "end":I
    sub-int v5, v4, v3

    .line 683
    .local v5, "bottomOffset":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 684
    .local v6, "firstChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 688
    .local v7, "firstTop":I
    if-lez v5, :cond_3

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v8, :cond_0

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_3

    .line 689
    :cond_0
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_1

    .line 691
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 695
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 696
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v8, :cond_3

    .line 699
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    sub-int/2addr v8, v1

    .line 700
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p2

    .line 699
    invoke-direct {p0, v8, v1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 702
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 706
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "lastBottom":I
    .end local v4    # "end":I
    .end local v5    # "bottomOffset":I
    .end local v6    # "firstChild":Landroid/view/View;
    .end local v7    # "firstTop":I
    :cond_3
    return-void
.end method

.method private greylist-max-o correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .line 709
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p3, :cond_3

    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 714
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 717
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 720
    .local v2, "start":I
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 724
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 725
    .local v4, "topOffset":I
    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 726
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 727
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 731
    .local v7, "lastPosition":I
    if-lez v4, :cond_3

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_0

    if-le v6, v3, :cond_3

    .line 732
    :cond_0
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ne v7, v9, :cond_1

    .line 734
    sub-int v9, v6, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 738
    :cond_1
    neg-int v9, v4

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 739
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ge v7, v9, :cond_3

    .line 742
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, p1

    :goto_0
    add-int/2addr v8, v7

    .line 743
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    .line 742
    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 745
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 749
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_3
    return-void
.end method

.method private greylist-max-r determineColumns(I)Z
    .locals 8
    .param p1, "availableSpace"    # I

    .line 1019
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 1020
    .local v0, "requestedHorizontalSpacing":I
    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 1021
    .local v1, "stretchMode":I
    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 1022
    .local v2, "requestedColumnWidth":I
    const/4 v3, 0x0

    .line 1024
    .local v3, "didNotInitiallyFit":Z
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1025
    if-lez v2, :cond_0

    .line 1027
    add-int v4, p1, v0

    add-int v5, v2, v0

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 1031
    :cond_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 1035
    :cond_1
    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1038
    :goto_0
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v5, 0x1

    if-gtz v4, :cond_2

    .line 1039
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1042
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 1050
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int v6, v4, v2

    sub-int v6, p1, v6

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v7, v0

    sub-int/2addr v6, v7

    .line 1053
    .local v6, "spaceLeftOver":I
    if-gez v6, :cond_3

    .line 1054
    const/4 v3, 0x1

    goto :goto_1

    .line 1045
    .end local v6    # "spaceLeftOver":I
    :pswitch_0
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1046
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1047
    goto :goto_2

    .line 1057
    .restart local v6    # "spaceLeftOver":I
    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 1077
    :pswitch_1
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1078
    if-le v4, v5, :cond_4

    .line 1079
    add-int/2addr v4, v5

    div-int v4, v6, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2

    .line 1082
    :cond_4
    add-int v4, v0, v6

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2

    .line 1060
    :pswitch_2
    div-int v4, v6, v4

    add-int/2addr v4, v2

    iput v4, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1061
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1062
    goto :goto_2

    .line 1066
    :pswitch_3
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1067
    if-le v4, v5, :cond_5

    .line 1068
    sub-int/2addr v4, v5

    div-int v4, v6, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2

    .line 1071
    :cond_5
    add-int v4, v0, v6

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 1073
    nop

    .line 1089
    .end local v6    # "spaceLeftOver":I
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, "selectedView":Landroid/view/View;
    iget v1, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v1, v2

    .line 355
    .local v1, "end":I
    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 356
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 359
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ge p2, v1, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 360
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 361
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 362
    move-object v0, v2

    .line 367
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 369
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 370
    .end local v2    # "temp":Landroid/view/View;
    goto :goto_0

    .line 372
    :cond_2
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 373
    return-object v0
.end method

.method private greylist-max-o fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .line 500
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 501
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 503
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 504
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    .line 506
    .end local p1    # "lastPosition":I
    .local v1, "lastPosition":I
    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .locals 12
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 762
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 763
    .local v0, "fadingEdgeLength":I
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 764
    .local v1, "selectedPosition":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 765
    .local v2, "numColumns":I
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 768
    .local v3, "verticalSpacing":I
    const/4 v4, -0x1

    .line 770
    .local v4, "rowEnd":I
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 771
    rem-int v5, v1, v2

    sub-int v5, v1, v5

    .local v5, "rowStart":I
    goto :goto_0

    .line 773
    .end local v5    # "rowStart":I
    :cond_0
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 775
    .local v5, "invertedSelection":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v5, v2

    sub-int v8, v5, v8

    sub-int v4, v7, v8

    .line 776
    const/4 v7, 0x0

    sub-int v8, v4, v2

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v5, v7

    .line 782
    .local v5, "rowStart":I
    :goto_0
    invoke-direct {p0, p2, v0, v5}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    .line 783
    .local v7, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v2, v5}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v8

    .line 786
    .local v8, "bottomSelectionPixel":I
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    invoke-direct {p0, v9, p1, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    .line 788
    .local v6, "sel":Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 790
    iget-object v9, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 791
    .local v9, "referenceView":Landroid/view/View;
    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 792
    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 794
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_2

    .line 795
    sub-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 796
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 797
    add-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    .line 799
    :cond_2
    add-int v10, v4, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 800
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 801
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 805
    :goto_2
    return-object v6
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .line 490
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 491
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 492
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 495
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 496
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o fillSelection(II)Landroid/view/View;
    .locals 13
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 510
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    .line 511
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 512
    .local v1, "numColumns":I
    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 515
    .local v2, "verticalSpacing":I
    const/4 v3, -0x1

    .line 517
    .local v3, "rowEnd":I
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 518
    rem-int v4, v0, v1

    sub-int v4, v0, v4

    .local v4, "rowStart":I
    goto :goto_0

    .line 520
    .end local v4    # "rowStart":I
    :cond_0
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    .line 522
    .local v4, "invertedSelection":I
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v5

    rem-int v7, v4, v1

    sub-int v7, v4, v7

    sub-int v3, v6, v7

    .line 523
    const/4 v6, 0x0

    sub-int v7, v3, v1

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v4, v6

    .line 526
    .local v4, "rowStart":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 527
    .local v6, "fadingEdgeLength":I
    invoke-direct {p0, p1, v6, v4}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    .line 529
    .local v7, "topSelectionPixel":I
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    invoke-direct {p0, v8, v7, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    .line 530
    .local v5, "sel":Landroid/view/View;
    iput v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 532
    iget-object v8, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 534
    .local v8, "referenceView":Landroid/view/View;
    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_2

    .line 535
    add-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 536
    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 537
    sub-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 538
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 540
    :cond_2
    invoke-direct {p0, p2, v6, v1, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v9

    .line 542
    .local v9, "bottomSelectionPixel":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v10, v9, v10

    .line 543
    .local v10, "offset":I
    invoke-virtual {p0, v10}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 544
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 545
    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 546
    add-int v11, v3, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 547
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 550
    .end local v9    # "bottomSelectionPixel":I
    .end local v10    # "offset":I
    :goto_2
    return-object v5
.end method

.method private greylist-max-o fillSpecific(II)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 608
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 611
    .local v0, "numColumns":I
    const/4 v1, -0x1

    .line 613
    .local v1, "motionRowEnd":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 614
    rem-int v2, p1, v0

    sub-int v2, p1, v2

    .local v2, "motionRowStart":I
    goto :goto_0

    .line 616
    .end local v2    # "motionRowStart":I
    :cond_0
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    .line 618
    .local v2, "invertedSelection":I
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v3

    rem-int v5, v2, v0

    sub-int v5, v2, v5

    sub-int v1, v4, v5

    .line 619
    const/4 v4, 0x0

    sub-int v5, v1, v0

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v2, v4

    .line 622
    .local v2, "motionRowStart":I
    :goto_0
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-direct {p0, v4, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v3

    .line 625
    .local v3, "temp":Landroid/view/View;
    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 627
    iget-object v4, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 629
    .local v4, "referenceView":Landroid/view/View;
    if-nez v4, :cond_2

    .line 630
    const/4 v5, 0x0

    return-object v5

    .line 633
    :cond_2
    iget v5, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 638
    .local v5, "verticalSpacing":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_4

    .line 639
    sub-int v6, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 640
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 641
    add-int v7, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 643
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    .line 644
    .local v8, "childCount":I
    if-lez v8, :cond_3

    .line 645
    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 647
    .end local v8    # "childCount":I
    :cond_3
    goto :goto_2

    .line 648
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    :cond_4
    add-int v6, v1, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 649
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 650
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-direct {p0, v6, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 652
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    .line 653
    .restart local v8    # "childCount":I
    if-lez v8, :cond_5

    .line 654
    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 658
    .end local v8    # "childCount":I
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 659
    return-object v3

    .line 660
    :cond_6
    if-eqz v6, :cond_7

    .line 661
    return-object v6

    .line 663
    :cond_7
    return-object v7
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 452
    const/4 v0, 0x0

    .line 454
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 455
    .local v1, "end":I
    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 456
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 459
    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-le p2, v1, :cond_2

    if-ltz p1, :cond_2

    .line 461
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 462
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 463
    move-object v0, v2

    .line 466
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 468
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 470
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 471
    .end local v2    # "temp":Landroid/view/View;
    goto :goto_0

    .line 473
    :cond_2
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 474
    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 477
    :cond_3
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 478
    return-object v0
.end method

.method private greylist-max-o getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .line 820
    move v0, p1

    .line 821
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 822
    sub-int/2addr v0, p2

    .line 824
    :cond_0
    return v0
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .line 837
    move v0, p1

    .line 838
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 839
    add-int/2addr v0, p2

    .line 841
    :cond_0
    return v0
.end method

.method private greylist-max-o isCandidateSelection(II)Z
    .locals 7
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .line 2236
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2237
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    .line 2242
    .local v1, "invertedIndex":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 2243
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, p1, v2

    sub-int v5, p1, v5

    .line 2244
    .local v5, "rowStart":I
    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "rowEnd":I
    goto :goto_0

    .line 2246
    .end local v2    # "rowEnd":I
    .end local v5    # "rowStart":I
    :cond_0
    add-int/lit8 v2, v0, -0x1

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, v1, v5

    sub-int v6, v1, v6

    sub-int/2addr v2, v6

    .line 2247
    .restart local v2    # "rowEnd":I
    sub-int v5, v2, v5

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2250
    .restart local v5    # "rowStart":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2271
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2257
    :sswitch_0
    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    return v3

    .line 2254
    :sswitch_1
    if-ne p1, v5, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 2263
    :sswitch_2
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_3

    move v3, v4

    :cond_3
    return v3

    .line 2260
    :sswitch_3
    if-ne p1, v2, :cond_4

    move v3, v4

    :cond_4
    return v3

    .line 2266
    :sswitch_4
    if-ne p1, v5, :cond_5

    if-nez v5, :cond_5

    move v3, v4

    :cond_5
    return v3

    .line 2269
    :sswitch_5
    if-ne p1, v2, :cond_6

    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_6

    move v3, v4

    :cond_6
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .line 1641
    move-object v9, p0

    move v10, p1

    iget-boolean v0, v9, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1643
    iget-object v0, v9, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v11

    .line 1644
    .local v11, "activeView":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 1647
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1648
    return-object v11

    .line 1654
    .end local v11    # "activeView":Landroid/view/View;
    :cond_0
    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v11

    .line 1657
    .local v11, "child":Landroid/view/View;
    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, p0

    move-object v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 1659
    return-object v11
.end method

.method private greylist-max-o makeRow(IIZ)Landroid/view/View;
    .locals 23
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .line 377
    move-object/from16 v7, p0

    iget v8, v7, Landroid/widget/GridView;->mColumnWidth:I

    .line 378
    .local v8, "columnWidth":I
    iget v9, v7, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 380
    .local v9, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v10

    .line 385
    .local v10, "isLayoutRtl":Z
    const/4 v0, 0x3

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    iget-object v2, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v8

    .line 387
    iget v2, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v2, v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    sub-int/2addr v1, v0

    .local v1, "nextLeft":I
    goto :goto_2

    .line 389
    .end local v1    # "nextLeft":I
    :cond_1
    iget-object v1, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 390
    iget v2, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v2, v0, :cond_2

    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    add-int/2addr v1, v0

    .line 393
    .restart local v1    # "nextLeft":I
    :goto_2
    iget-boolean v0, v7, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v13, 0x1

    if-nez v0, :cond_3

    .line 394
    iget v0, v7, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, p1, v0

    iget v2, v7, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v14, p1

    move v15, v0

    .local v0, "last":I
    goto :goto_4

    .line 396
    .end local v0    # "last":I
    :cond_3
    add-int/lit8 v0, p1, 0x1

    .line 397
    .restart local v0    # "last":I
    iget v2, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/2addr v2, v13

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 399
    .end local p1    # "startPos":I
    .local v2, "startPos":I
    sub-int v3, v0, v2

    iget v4, v7, Landroid/widget/GridView;->mNumColumns:I

    if-ge v3, v4, :cond_5

    .line 400
    sub-int v3, v0, v2

    sub-int/2addr v4, v3

    add-int v3, v8, v9

    mul-int/2addr v4, v3

    .line 401
    .local v4, "deltaLeft":I
    if-eqz v10, :cond_4

    const/4 v3, -0x1

    goto :goto_3

    :cond_4
    move v3, v13

    :goto_3
    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    move v15, v0

    move v14, v2

    goto :goto_4

    .line 399
    .end local v4    # "deltaLeft":I
    :cond_5
    move v15, v0

    move v14, v2

    .line 405
    .end local v0    # "last":I
    .end local v2    # "startPos":I
    .local v14, "startPos":I
    .local v15, "last":I
    :goto_4
    const/4 v0, 0x0

    .line 407
    .local v0, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v16

    .line 408
    .local v16, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v17

    .line 409
    .local v17, "inClick":Z
    iget v5, v7, Landroid/widget/GridView;->mSelectedPosition:I

    .line 411
    .local v5, "selectedPosition":I
    const/4 v2, 0x0

    .line 412
    .local v2, "child":Landroid/view/View;
    if-eqz v10, :cond_6

    const/4 v3, -0x1

    goto :goto_5

    :cond_6
    move v3, v13

    :goto_5
    move/from16 v18, v3

    .line 413
    .local v18, "nextChildDir":I
    move v3, v14

    move-object/from16 v19, v0

    move/from16 v20, v1

    move-object v4, v2

    .end local v0    # "selectedView":Landroid/view/View;
    .end local v1    # "nextLeft":I
    .end local v2    # "child":Landroid/view/View;
    .local v3, "pos":I
    .local v4, "child":Landroid/view/View;
    .local v19, "selectedView":Landroid/view/View;
    .local v20, "nextLeft":I
    :goto_6
    if-ge v3, v15, :cond_c

    .line 415
    if-ne v3, v5, :cond_7

    move v0, v13

    goto :goto_7

    :cond_7
    move v0, v11

    :goto_7
    move/from16 v21, v0

    .line 418
    .local v21, "selected":Z
    if-eqz p3, :cond_8

    const/4 v6, -0x1

    goto :goto_8

    :cond_8
    sub-int v0, v3, v14

    move v6, v0

    .line 419
    .local v6, "where":I
    :goto_8
    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, p2

    move v11, v3

    .end local v3    # "pos":I
    .local v11, "pos":I
    move/from16 v3, p3

    move-object v12, v4

    .end local v4    # "child":Landroid/view/View;
    .local v12, "child":Landroid/view/View;
    move/from16 v4, v20

    move/from16 v22, v5

    .end local v5    # "selectedPosition":I
    .local v22, "selectedPosition":I
    move/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v4

    .line 421
    .end local v12    # "child":Landroid/view/View;
    .restart local v4    # "child":Landroid/view/View;
    mul-int v0, v18, v8

    add-int v20, v20, v0

    .line 422
    add-int/lit8 v0, v15, -0x1

    if-ge v11, v0, :cond_9

    .line 423
    mul-int v0, v18, v9

    add-int v20, v20, v0

    .line 426
    :cond_9
    if-eqz v21, :cond_b

    if-nez v16, :cond_a

    if-eqz v17, :cond_b

    .line 427
    :cond_a
    move-object v0, v4

    move-object/from16 v19, v0

    .line 413
    .end local v6    # "where":I
    .end local v21    # "selected":Z
    :cond_b
    add-int/lit8 v3, v11, 0x1

    move/from16 v5, v22

    const/4 v11, 0x0

    .end local v11    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_6

    .end local v22    # "selectedPosition":I
    .restart local v5    # "selectedPosition":I
    :cond_c
    move v11, v3

    move-object v12, v4

    move/from16 v22, v5

    .line 431
    .end local v3    # "pos":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "selectedPosition":I
    .restart local v12    # "child":Landroid/view/View;
    .restart local v22    # "selectedPosition":I
    iput-object v12, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 433
    if-eqz v19, :cond_d

    .line 434
    iput-object v12, v7, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 437
    :cond_d
    return-object v19
.end method

.method private greylist-max-o moveSelection(III)Landroid/view/View;
    .locals 17
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 934
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 935
    .local v1, "fadingEdgeLength":I
    iget v2, v0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 936
    .local v2, "selectedPosition":I
    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 937
    .local v3, "numColumns":I
    iget v4, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 941
    .local v4, "verticalSpacing":I
    const/4 v5, -0x1

    .line 943
    .local v5, "rowEnd":I
    iget-boolean v6, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_0

    .line 944
    sub-int v6, v2, p1

    sub-int v9, v2, p1

    rem-int/2addr v9, v3

    sub-int/2addr v6, v9

    .line 946
    .local v6, "oldRowStart":I
    rem-int v9, v2, v3

    sub-int v9, v2, v9

    .local v9, "rowStart":I
    goto :goto_0

    .line 948
    .end local v6    # "oldRowStart":I
    .end local v9    # "rowStart":I
    :cond_0
    iget v6, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    sub-int/2addr v6, v2

    .line 950
    .local v6, "invertedSelection":I
    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    rem-int v10, v6, v3

    sub-int v10, v6, v10

    sub-int v5, v9, v10

    .line 951
    sub-int v9, v5, v3

    add-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 953
    .restart local v9    # "rowStart":I
    iget v10, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v10, v8

    sub-int v11, v2, p1

    sub-int/2addr v10, v11

    .line 954
    .end local v6    # "invertedSelection":I
    .local v10, "invertedSelection":I
    iget v6, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    rem-int v11, v10, v3

    sub-int v11, v10, v11

    sub-int/2addr v6, v11

    .line 955
    .local v6, "oldRowStart":I
    sub-int v11, v6, v3

    add-int/2addr v11, v8

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 958
    .end local v10    # "invertedSelection":I
    :goto_0
    sub-int v10, v9, v6

    .line 960
    .local v10, "rowDelta":I
    move/from16 v11, p2

    invoke-direct {v0, v11, v1, v9}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v12

    .line 961
    .local v12, "topSelectionPixel":I
    move/from16 v13, p3

    invoke-direct {v0, v13, v1, v3, v9}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v14

    .line 965
    .local v14, "bottomSelectionPixel":I
    iput v9, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 970
    if-lez v10, :cond_3

    .line 975
    iget-object v15, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v15, :cond_1

    goto :goto_1

    .line 976
    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v7

    :goto_1
    nop

    .line 978
    .local v7, "oldBottom":I
    iget-boolean v15, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v15, :cond_2

    move v15, v5

    goto :goto_2

    :cond_2
    move v15, v9

    :goto_2
    move/from16 v16, v1

    .end local v1    # "fadingEdgeLength":I
    .local v16, "fadingEdgeLength":I
    add-int v1, v7, v4

    invoke-direct {v0, v15, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v1

    .line 979
    .local v1, "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 981
    .local v8, "referenceView":Landroid/view/View;
    invoke-direct {v0, v8, v12, v14}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 982
    .end local v7    # "oldBottom":I
    goto :goto_7

    .end local v8    # "referenceView":Landroid/view/View;
    .end local v16    # "fadingEdgeLength":I
    .local v1, "fadingEdgeLength":I
    :cond_3
    move/from16 v16, v1

    .end local v1    # "fadingEdgeLength":I
    .restart local v16    # "fadingEdgeLength":I
    if-gez v10, :cond_6

    .line 986
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_4

    .line 987
    move v1, v7

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 989
    .local v1, "oldTop":I
    :goto_3
    iget-boolean v8, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v9

    :goto_4
    sub-int v15, v1, v4

    invoke-direct {v0, v8, v15, v7}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v7

    .line 990
    .local v7, "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 992
    .restart local v8    # "referenceView":Landroid/view/View;
    invoke-direct {v0, v8, v12, v14}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 993
    .end local v1    # "oldTop":I
    move-object v1, v7

    goto :goto_7

    .line 997
    .end local v7    # "sel":Landroid/view/View;
    .end local v8    # "referenceView":Landroid/view/View;
    :cond_6
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_7

    .line 998
    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    :goto_5
    move v1, v7

    .line 1000
    .restart local v1    # "oldTop":I
    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_6

    :cond_8
    move v7, v9

    :goto_6
    invoke-direct {v0, v7, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v7

    .line 1001
    .restart local v7    # "sel":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v1, v7

    .line 1004
    .end local v7    # "sel":Landroid/view/View;
    .local v1, "sel":Landroid/view/View;
    .restart local v8    # "referenceView":Landroid/view/View;
    :goto_7
    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_9

    .line 1005
    sub-int v7, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 1006
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1007
    add-int v7, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_8

    .line 1009
    :cond_9
    add-int v7, v5, v3

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 1010
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1011
    add-int/lit8 v7, v9, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-direct {v0, v7, v15}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 1014
    :goto_8
    return-object v1
.end method

.method private greylist-max-o pinToBottom(I)V
    .locals 3
    .param p1, "childrenBottom"    # I

    .line 564
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 565
    .local v0, "count":I
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_0

    .line 566
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 567
    .local v1, "bottom":I
    sub-int v2, p1, v1

    .line 568
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 569
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 572
    .end local v1    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private greylist-max-o pinToTop(I)V
    .locals 2
    .param p1, "childrenTop"    # I

    .line 554
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 556
    .local v0, "top":I
    sub-int v1, p1, v0

    .line 557
    .local v1, "offset":I
    if-gez v1, :cond_0

    .line 558
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 561
    .end local v0    # "top":I
    .end local v1    # "offset":I
    :cond_0
    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZI)V
    .locals 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z
    .param p8, "where"    # I

    .line 1682
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p8

    const-wide/16 v4, 0x8

    const-string/jumbo v6, "setupGridItem"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1684
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    .line 1685
    .local v8, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v9

    if-eq v8, v9, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    .line 1686
    .local v9, "updateChildSelected":Z
    :goto_1
    iget v10, v0, Landroid/widget/GridView;->mTouchMode:I

    .line 1687
    .local v10, "mode":I
    if-lez v10, :cond_2

    const/4 v11, 0x3

    if-ge v10, v11, :cond_2

    iget v11, v0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v11, v2, :cond_2

    move v11, v6

    goto :goto_2

    :cond_2
    move v11, v7

    .line 1689
    .local v11, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-eq v11, v12, :cond_3

    move v12, v6

    goto :goto_3

    :cond_3
    move v12, v7

    .line 1690
    .local v12, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_5

    if-nez v9, :cond_5

    .line 1691
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    move v13, v7

    goto :goto_5

    :cond_5
    :goto_4
    move v13, v6

    .line 1695
    .local v13, "needToMeasure":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1696
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_6

    .line 1697
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1699
    :cond_6
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1700
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1705
    if-eqz v9, :cond_7

    .line 1706
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1707
    if-eqz v8, :cond_7

    .line 1708
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1712
    :cond_7
    if-eqz v12, :cond_8

    .line 1713
    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1716
    :cond_8
    iget v15, v0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v15, :cond_a

    iget-object v15, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_a

    .line 1717
    instance-of v15, v1, Landroid/widget/Checkable;

    if-eqz v15, :cond_9

    .line 1718
    move-object v15, v1

    check-cast v15, Landroid/widget/Checkable;

    iget-object v4, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-interface {v15, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    .line 1719
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_a

    .line 1721
    iget-object v4, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 1725
    :cond_a
    :goto_6
    if-eqz p7, :cond_c

    iget-boolean v4, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v4, :cond_c

    .line 1726
    invoke-virtual {v0, v1, v3, v14}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1730
    if-eqz p7, :cond_b

    .line 1731
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v4, v2, :cond_d

    .line 1733
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_7

    .line 1736
    :cond_c
    iput-boolean v7, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1737
    invoke-virtual {v0, v1, v3, v14, v6}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1740
    :cond_d
    :goto_7
    if-eqz v13, :cond_e

    .line 1741
    nop

    .line 1742
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1741
    invoke-static {v4, v7, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1744
    .local v4, "childHeightSpec":I
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v15, 0x40000000    # 2.0f

    .line 1745
    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1744
    invoke-static {v5, v7, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1746
    .local v5, "childWidthSpec":I
    invoke-virtual {v1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 1747
    .end local v4    # "childHeightSpec":I
    .end local v5    # "childWidthSpec":I
    goto :goto_8

    .line 1748
    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    .line 1751
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1752
    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1755
    .local v5, "h":I
    if-eqz p4, :cond_f

    move/from16 v7, p3

    goto :goto_9

    :cond_f
    sub-int v7, p3, v5

    .line 1757
    .local v7, "childTop":I
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v15

    .line 1758
    .local v15, "layoutDirection":I
    iget v6, v0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v6, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 1759
    .local v6, "absoluteGravity":I
    and-int/lit8 v16, v6, 0x7

    packed-switch v16, :pswitch_data_0

    .line 1770
    :pswitch_0
    move/from16 v2, p5

    .local v2, "childLeft":I
    goto :goto_a

    .line 1767
    .end local v2    # "childLeft":I
    :pswitch_1
    iget v2, v0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v2, p5, v2

    sub-int/2addr v2, v4

    .line 1768
    .restart local v2    # "childLeft":I
    goto :goto_a

    .line 1761
    .end local v2    # "childLeft":I
    :pswitch_2
    move/from16 v2, p5

    .line 1762
    .restart local v2    # "childLeft":I
    goto :goto_a

    .line 1764
    .end local v2    # "childLeft":I
    :pswitch_3
    iget v2, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int v2, p5, v2

    .line 1765
    .restart local v2    # "childLeft":I
    nop

    .line 1774
    :goto_a
    if-eqz v13, :cond_10

    .line 1775
    add-int v3, v2, v4

    .line 1776
    .local v3, "childRight":I
    move/from16 v16, v4

    .end local v4    # "w":I
    .local v16, "w":I
    add-int v4, v7, v5

    .line 1777
    .local v4, "childBottom":I
    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1778
    .end local v3    # "childRight":I
    .end local v4    # "childBottom":I
    goto :goto_b

    .line 1779
    .end local v16    # "w":I
    .local v4, "w":I
    :cond_10
    move/from16 v16, v4

    .end local v4    # "w":I
    .restart local v16    # "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1780
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v7, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1783
    :goto_b
    iget-boolean v3, v0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1784
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1787
    :cond_11
    const-wide/16 v3, 0x8

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1788
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method greylist-max-o arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .line 2062
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 2063
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2068
    .local v1, "numColumns":I
    const/4 v2, 0x0

    .line 2070
    .local v2, "moved":Z
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 2071
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 2072
    .local v3, "startOfRowPos":I
    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "endOfRowPos":I
    goto :goto_0

    .line 2074
    .end local v3    # "startOfRowPos":I
    .end local v5    # "endOfRowPos":I
    :cond_0
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    .line 2075
    .local v3, "invertedSelection":I
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    div-int v6, v3, v1

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    .line 2076
    .restart local v5    # "endOfRowPos":I
    sub-int v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v6

    .line 2079
    .local v3, "startOfRowPos":I
    :goto_0
    const/4 v6, 0x6

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2088
    :sswitch_0
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_1

    .line 2089
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2090
    add-int v7, v0, v1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2091
    const/4 v2, 0x1

    goto :goto_1

    .line 2081
    :sswitch_1
    if-lez v3, :cond_1

    .line 2082
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2083
    sub-int v7, v0, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2084
    const/4 v2, 0x1

    .line 2096
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v7

    .line 2097
    .local v7, "isLayoutRtl":Z
    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v3, :cond_4

    if-ne p1, v9, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    if-ne p1, v8, :cond_4

    if-eqz v7, :cond_4

    .line 2099
    :cond_3
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2100
    add-int/lit8 v6, v0, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2101
    const/4 v2, 0x1

    goto :goto_2

    .line 2102
    :cond_4
    if-ge v0, v5, :cond_7

    if-ne p1, v9, :cond_5

    if-nez v7, :cond_6

    :cond_5
    if-ne p1, v8, :cond_7

    if-nez v7, :cond_7

    .line 2104
    :cond_6
    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2105
    add-int/lit8 v4, v0, 0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2106
    const/4 v2, 0x1

    .line 2109
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 2110
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 2111
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2114
    :cond_8
    if-eqz v2, :cond_9

    .line 2115
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 2118
    :cond_9
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .line 1185
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1188
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1189
    new-instance v1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    .line 1190
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1193
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1194
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1195
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1196
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p4, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1198
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 1199
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1200
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    .line 1202
    :cond_1
    add-int/lit8 v1, p4, -0x1

    sub-int/2addr v1, p3

    .line 1204
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v3, v2, -0x1

    rem-int v2, v1, v2

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1205
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1207
    .end local v1    # "invertedIndex":I
    :goto_0
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .locals 10

    .line 2551
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2552
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2553
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2554
    .local v2, "numColumns":I
    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    .line 2556
    .local v3, "rowCount":I
    mul-int/lit8 v4, v3, 0x64

    .line 2558
    .local v4, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2559
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2560
    .local v5, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v6, v7

    .line 2561
    .local v6, "height":I
    if-lez v6, :cond_0

    .line 2562
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 2565
    :cond_0
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2566
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 2567
    .local v7, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v8, v9

    .line 2568
    .end local v6    # "height":I
    .local v8, "height":I
    if-lez v8, :cond_1

    .line 2569
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v6

    sub-int v6, v7, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v8

    sub-int/2addr v4, v6

    .line 2572
    :cond_1
    return v4

    .line 2574
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "numColumns":I
    .end local v3    # "rowCount":I
    .end local v4    # "extent":I
    .end local v5    # "top":I
    .end local v7    # "bottom":I
    .end local v8    # "height":I
    :cond_2
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .locals 11

    .line 2579
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2580
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2581
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2582
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v3, v4

    .line 2583
    .local v3, "height":I
    if-lez v3, :cond_1

    .line 2584
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2585
    .local v4, "numColumns":I
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    .line 2589
    .local v5, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int v6, v5, v4

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v7

    goto :goto_0

    .line 2590
    :cond_0
    move v6, v1

    :goto_0
    nop

    .line 2591
    .local v6, "oddItemsOnFirstRow":I
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    .line 2592
    .local v7, "whichRow":I
    mul-int/lit8 v8, v7, 0x64

    mul-int/lit8 v9, v2, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    .line 2593
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 2592
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 2596
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "top":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "oddItemsOnFirstRow":I
    .end local v7    # "whichRow":I
    :cond_1
    return v1
.end method

.method protected whitelist computeVerticalScrollRange()I
    .locals 5

    .line 2602
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2603
    .local v0, "numColumns":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 2604
    .local v1, "rowCount":I
    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2605
    .local v2, "result":I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2607
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2609
    :cond_0
    return v2
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1306
    iget-object v0, p0, Landroid/widget/GridView;->mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 1310
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1312
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_1

    .line 1313
    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1315
    :cond_1
    return-void
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1283
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1287
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1289
    .local v0, "retVal":Z
    iget-object v1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v1, :cond_1

    .line 1290
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1293
    :cond_1
    return v0
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2692
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2693
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const-string/jumbo v1, "numColumns"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2694
    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .locals 7
    .param p1, "down"    # Z

    .line 303
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 304
    .local v0, "numColumns":I
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 306
    .local v1, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 308
    .local v2, "count":I
    const/16 v3, 0x22

    if-eqz p1, :cond_3

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "paddingTop":I
    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v4

    .line 313
    :cond_0
    if-lez v2, :cond_1

    .line 314
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 315
    .local v3, "startOffset":I
    :goto_0
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v5, v2

    .line 316
    .local v5, "position":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v6, :cond_2

    .line 317
    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 319
    :cond_2
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 320
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 321
    .end local v3    # "startOffset":I
    .end local v4    # "paddingTop":I
    .end local v5    # "position":I
    goto :goto_3

    .line 322
    :cond_3
    const/4 v4, 0x0

    .line 323
    .local v4, "paddingBottom":I
    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_4

    .line 324
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v4

    .line 326
    :cond_4
    if-lez v2, :cond_5

    .line 327
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    .line 328
    .restart local v3    # "startOffset":I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 329
    .restart local v5    # "position":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_6

    .line 330
    sub-int/2addr v5, v0

    goto :goto_2

    .line 332
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 334
    :goto_2
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 335
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 337
    .end local v3    # "startOffset":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "position":I
    :goto_3
    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .line 576
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 577
    .local v0, "childCount":I
    if-lez v0, :cond_4

    .line 579
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 580
    .local v1, "numColumns":I
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_2

    .line 581
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 582
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 583
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    .line 581
    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 587
    :cond_2
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 588
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 589
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    .line 587
    :cond_3
    sub-int/2addr v2, v1

    goto :goto_1

    .line 594
    .end local v1    # "numColumns":I
    .end local v2    # "i":I
    :cond_4
    :goto_2
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .line 2033
    const/4 v0, 0x0

    .line 2034
    .local v0, "moved":Z
    const/4 v1, 0x2

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 2035
    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2036
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2037
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2038
    const/4 v0, 0x1

    goto :goto_0

    .line 2039
    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2040
    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2041
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2042
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2043
    const/4 v0, 0x1

    .line 2046
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2047
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 2050
    :cond_2
    return v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2614
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 77
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 1262
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 1264
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public whitelist getColumnWidth()I
    .locals 1

    .line 2452
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .locals 1

    .line 2302
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalSpacing()I
    .locals 1

    .line 2339
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public whitelist getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2498
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public whitelist getRequestedColumnWidth()I
    .locals 1

    .line 2469
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public whitelist getRequestedHorizontalSpacing()I
    .locals 1

    .line 2359
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public whitelist getStretchMode()I
    .locals 1

    .line 2420
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public whitelist getVerticalSpacing()I
    .locals 1

    .line 2392
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected whitelist layoutChildren()V
    .locals 26

    .line 1346
    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1347
    .local v2, "blockLayoutRequests":Z
    const/4 v0, 0x1

    if-nez v2, :cond_0

    .line 1348
    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1352
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1354
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1356
    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_2

    .line 1357
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1358
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1617
    if-nez v2, :cond_1

    .line 1618
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1359
    :cond_1
    return-void

    .line 1617
    :catchall_0
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_16

    .line 1362
    :cond_2
    :try_start_2
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1363
    .local v4, "childrenTop":I
    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 1365
    .local v5, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1367
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 1370
    .local v7, "delta":I
    const/4 v8, 0x0

    .line 1371
    .local v8, "oldSel":Landroid/view/View;
    const/4 v9, 0x0

    .line 1372
    .local v9, "oldFirst":Landroid/view/View;
    const/4 v10, 0x0

    .line 1375
    .local v10, "newSel":Landroid/view/View;
    iget v11, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v11, :pswitch_data_0

    .line 1394
    iget v11, v1, Landroid/widget/GridView;->mSelectedPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1388
    :pswitch_0
    :try_start_3
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v11, :cond_4

    .line 1389
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int v7, v11, v12

    goto :goto_1

    .line 1377
    :pswitch_1
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v11, v12

    .line 1378
    .local v11, "index":I
    if-ltz v11, :cond_4

    if-ge v11, v6, :cond_4

    .line 1379
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v12

    goto :goto_1

    .line 1386
    .end local v11    # "index":I
    :pswitch_2
    goto :goto_1

    .line 1394
    :goto_0
    :try_start_4
    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sub-int/2addr v11, v12

    .line 1395
    .restart local v11    # "index":I
    if-ltz v11, :cond_3

    if-ge v11, v6, :cond_3

    .line 1396
    :try_start_5
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v8, v12

    .line 1400
    :cond_3
    :try_start_6
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 1403
    .end local v11    # "index":I
    :cond_4
    :goto_1
    iget-boolean v11, v1, Landroid/widget/GridView;->mDataChanged:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1404
    .local v11, "dataChanged":Z
    if-eqz v11, :cond_5

    .line 1405
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1410
    :cond_5
    :try_start_8
    iget v12, v1, Landroid/widget/GridView;->mItemCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v12, :cond_7

    .line 1411
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1412
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1617
    if-nez v2, :cond_6

    .line 1618
    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1413
    :cond_6
    return-void

    .line 1416
    :cond_7
    :try_start_a
    iget v12, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v12}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1418
    const/4 v12, 0x0

    .line 1419
    .local v12, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v13, 0x0

    .line 1420
    .local v13, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v14, -0x1

    .line 1422
    .local v14, "accessibilityFocusPosition":I
    const/4 v15, 0x0

    .line 1428
    .local v15, "mInsideViewAccFocused":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1429
    .local v16, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v16, :cond_d

    .line 1430
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1431
    .local v18, "focusHost":Landroid/view/View;
    move-object/from16 v3, v18

    .end local v18    # "focusHost":Landroid/view/View;
    .local v3, "focusHost":Landroid/view/View;
    if-eqz v3, :cond_c

    .line 1432
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v19, v18

    .line 1434
    .local v19, "focusChild":Landroid/view/View;
    move-object/from16 v0, v19

    .end local v19    # "focusChild":Landroid/view/View;
    .local v0, "focusChild":Landroid/view/View;
    if-eq v3, v0, :cond_8

    .line 1435
    const/4 v15, 0x1

    .line 1438
    :cond_8
    if-eqz v0, :cond_b

    .line 1439
    if-eqz v11, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v19, v12

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v19, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-boolean v12, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_9

    goto :goto_2

    :cond_9
    move-object/from16 v12, v19

    goto :goto_3

    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_a
    move-object/from16 v19, v12

    .line 1443
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_2
    move-object v13, v3

    .line 1444
    nop

    .line 1445
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    .line 1449
    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v14, v19

    goto :goto_5

    .line 1438
    :cond_b
    move-object/from16 v19, v12

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_5

    .line 1431
    .end local v0    # "focusChild":Landroid/view/View;
    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_c
    move-object/from16 v19, v12

    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_4

    .line 1429
    .end local v3    # "focusHost":Landroid/view/View;
    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_d
    move-object/from16 v19, v12

    .line 1456
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_4
    move-object/from16 v12, v19

    .end local v19    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_5
    :try_start_c
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1457
    .local v0, "firstPosition":I
    iget-object v3, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1459
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v11, :cond_f

    .line 1460
    const/16 v19, 0x0

    move/from16 v20, v11

    move/from16 v11, v19

    .local v11, "i":I
    .local v20, "dataChanged":Z
    :goto_6
    if-ge v11, v6, :cond_e

    .line 1461
    move/from16 v19, v2

    .end local v2    # "blockLayoutRequests":Z
    .local v19, "blockLayoutRequests":Z
    :try_start_d
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v21, v15

    .end local v15    # "mInsideViewAccFocused":Z
    .local v21, "mInsideViewAccFocused":Z
    add-int v15, v0, v11

    invoke-virtual {v3, v2, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1460
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v19

    move/from16 v15, v21

    goto :goto_6

    .end local v19    # "blockLayoutRequests":Z
    .end local v21    # "mInsideViewAccFocused":Z
    .restart local v2    # "blockLayoutRequests":Z
    .restart local v15    # "mInsideViewAccFocused":Z
    :cond_e
    move/from16 v19, v2

    move/from16 v21, v15

    .end local v2    # "blockLayoutRequests":Z
    .end local v11    # "i":I
    .end local v15    # "mInsideViewAccFocused":Z
    .restart local v19    # "blockLayoutRequests":Z
    .restart local v21    # "mInsideViewAccFocused":Z
    goto :goto_7

    .line 1464
    .end local v19    # "blockLayoutRequests":Z
    .end local v20    # "dataChanged":Z
    .end local v21    # "mInsideViewAccFocused":Z
    .restart local v2    # "blockLayoutRequests":Z
    .local v11, "dataChanged":Z
    .restart local v15    # "mInsideViewAccFocused":Z
    :cond_f
    move/from16 v19, v2

    move/from16 v20, v11

    move/from16 v21, v15

    .end local v2    # "blockLayoutRequests":Z
    .end local v11    # "dataChanged":Z
    .end local v15    # "mInsideViewAccFocused":Z
    .restart local v19    # "blockLayoutRequests":Z
    .restart local v20    # "dataChanged":Z
    .restart local v21    # "mInsideViewAccFocused":Z
    invoke-virtual {v3, v6, v0}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1468
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1469
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1471
    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v11, -0x1

    packed-switch v2, :pswitch_data_1

    .line 1499
    if-nez v6, :cond_16

    .line 1500
    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_8

    .line 1496
    :pswitch_3
    invoke-direct {v1, v7, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    .line 1497
    .local v2, "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1492
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_4
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v15, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v15}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1493
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1489
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_5
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v15, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v15}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1490
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1485
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_6
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 1486
    .restart local v2    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1487
    goto/16 :goto_f

    .line 1473
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_7
    if-eqz v10, :cond_10

    .line 1474
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1476
    .end local v2    # "sel":Landroid/view/View;
    :cond_10
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    .line 1478
    .restart local v2    # "sel":Landroid/view/View;
    goto/16 :goto_f

    .line 1480
    .end local v2    # "sel":Landroid/view/View;
    :pswitch_8
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1481
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .line 1482
    .restart local v2    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 1483
    goto/16 :goto_f

    .line 1500
    .end local v2    # "sel":Landroid/view/View;
    :goto_8
    if-nez v2, :cond_13

    .line 1501
    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_9

    .line 1502
    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    move v2, v11

    .line 1501
    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1503
    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_f

    .line 1505
    .end local v2    # "sel":Landroid/view/View;
    :cond_13
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    .line 1506
    .local v2, "last":I
    iget-object v15, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v15, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v15

    if-eqz v15, :cond_14

    goto :goto_b

    .line 1507
    :cond_14
    move v15, v2

    goto :goto_c

    :cond_15
    :goto_b
    move v15, v11

    .line 1506
    :goto_c
    invoke-virtual {v1, v15}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1508
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v15

    move-object v2, v15

    .line 1509
    .local v2, "sel":Landroid/view/View;
    goto :goto_f

    .line 1511
    .end local v2    # "sel":Landroid/view/View;
    :cond_16
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_18

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v15, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v15, :cond_18

    .line 1512
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v8, :cond_17

    .line 1513
    move v15, v4

    goto :goto_d

    :cond_17
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1512
    :goto_d
    invoke-direct {v1, v2, v15}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_f

    .line 1514
    .end local v2    # "sel":Landroid/view/View;
    :cond_18
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v15, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v15, :cond_1a

    .line 1515
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v9, :cond_19

    .line 1516
    move v15, v4

    goto :goto_e

    :cond_19
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1515
    :goto_e
    invoke-direct {v1, v2, v15}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "sel":Landroid/view/View;
    goto :goto_f

    .line 1518
    .end local v2    # "sel":Landroid/view/View;
    :cond_1a
    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v15

    move-object v2, v15

    .line 1525
    .restart local v2    # "sel":Landroid/view/View;
    :goto_f
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1527
    if-eqz v2, :cond_1b

    .line 1528
    invoke-virtual {v1, v11, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1529
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v15

    iput v15, v1, Landroid/widget/GridView;->mSelectedTop:I

    move/from16 v23, v0

    goto :goto_11

    .line 1531
    :cond_1b
    iget v15, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v15, :cond_1c

    iget v15, v1, Landroid/widget/GridView;->mTouchMode:I

    const/4 v11, 0x3

    if-ge v15, v11, :cond_1c

    const/4 v11, 0x1

    goto :goto_10

    :cond_1c
    const/4 v11, 0x0

    .line 1533
    .local v11, "inTouchMode":Z
    :goto_10
    if-eqz v11, :cond_1e

    .line 1535
    iget v15, v1, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v23, v0

    .end local v0    # "firstPosition":I
    .local v23, "firstPosition":I
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v15, v0

    invoke-virtual {v1, v15}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1536
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 1537
    iget v15, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v15, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1539
    .end local v0    # "child":Landroid/view/View;
    :cond_1d
    goto :goto_11

    .end local v23    # "firstPosition":I
    .local v0, "firstPosition":I
    :cond_1e
    move/from16 v23, v0

    .end local v0    # "firstPosition":I
    .restart local v23    # "firstPosition":I
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v0, v15, :cond_20

    iget-boolean v0, v1, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    if-nez v0, :cond_20

    .line 1543
    iget v0, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v15, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v15

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1544
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1f

    .line 1545
    iget v15, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v15, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1547
    .end local v0    # "child":Landroid/view/View;
    :cond_1f
    goto :goto_11

    .line 1549
    :cond_20
    const/4 v15, 0x0

    iput v15, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1550
    iget-object v0, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1555
    .end local v11    # "inTouchMode":Z
    :goto_11
    const/4 v0, 0x0

    if-eqz v16, :cond_28

    .line 1556
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v11

    .line 1557
    .local v11, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v11, :cond_26

    .line 1558
    if-eqz v13, :cond_23

    .line 1559
    invoke-virtual {v13}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v15

    if-eqz v15, :cond_22

    .line 1560
    nop

    .line 1561
    invoke-virtual {v13}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v15

    .line 1562
    .local v15, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v12, :cond_21

    if-eqz v15, :cond_21

    .line 1563
    nop

    .line 1564
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v24

    .line 1563
    invoke-static/range {v24 .. v25}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v18

    move/from16 v22, v18

    .line 1565
    .local v22, "virtualViewId":I
    move-object/from16 v24, v2

    .end local v2    # "sel":Landroid/view/View;
    .local v24, "sel":Landroid/view/View;
    const/16 v2, 0x40

    move-object/from16 v25, v3

    move/from16 v3, v22

    .end local v22    # "virtualViewId":I
    .local v3, "virtualViewId":I
    .local v25, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {v15, v3, v2, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1567
    nop

    .end local v3    # "virtualViewId":I
    goto :goto_13

    .line 1562
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_21
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 1568
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {v13}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_13

    .line 1559
    .end local v15    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_22
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    goto :goto_12

    .line 1558
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v2    # "sel":Landroid/view/View;
    .restart local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_23
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 1570
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :goto_12
    const/4 v2, -0x1

    if-eq v14, v2, :cond_25

    .line 1572
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int v2, v14, v2

    .line 1574
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    .line 1572
    const/4 v15, 0x0

    invoke-static {v2, v15, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1575
    .local v2, "position":I
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1576
    .local v3, "restoreView":Landroid/view/View;
    if-eqz v3, :cond_24

    .line 1577
    invoke-virtual {v3}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 1579
    .end local v2    # "position":I
    .end local v3    # "restoreView":Landroid/view/View;
    :cond_24
    goto :goto_15

    .line 1570
    :cond_25
    :goto_13
    goto :goto_15

    .line 1581
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v2, "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_26
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    const/4 v2, -0x1

    if-eq v14, v2, :cond_29

    .line 1582
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int v2, v14, v2

    .line 1583
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    .line 1582
    const/4 v15, 0x0

    invoke-static {v2, v15, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1585
    .local v2, "position":I
    if-eqz v21, :cond_27

    .line 1586
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, "restoreView":Landroid/view/View;
    goto :goto_14

    .line 1588
    .end local v3    # "restoreView":Landroid/view/View;
    :cond_27
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1590
    .restart local v3    # "restoreView":Landroid/view/View;
    :goto_14
    invoke-virtual {v11}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v15

    if-eqz v15, :cond_29

    if-eq v11, v3, :cond_29

    .line 1591
    invoke-virtual {v11}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1592
    if-eqz v3, :cond_29

    .line 1593
    invoke-virtual {v3}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_15

    .line 1555
    .end local v11    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v2, "sel":Landroid/view/View;
    .local v3, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_28
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 1600
    .end local v2    # "sel":Landroid/view/View;
    .end local v3    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v24    # "sel":Landroid/view/View;
    .restart local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_29
    :goto_15
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1601
    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1602
    iget-object v2, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_2a

    .line 1603
    iget-object v2, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1604
    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1606
    :cond_2a
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1607
    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1609
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1611
    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_2b

    .line 1612
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1615
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1617
    .end local v4    # "childrenTop":I
    .end local v5    # "childrenBottom":I
    .end local v6    # "childCount":I
    .end local v7    # "delta":I
    .end local v8    # "oldSel":Landroid/view/View;
    .end local v9    # "oldFirst":Landroid/view/View;
    .end local v10    # "newSel":Landroid/view/View;
    .end local v12    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v14    # "accessibilityFocusPosition":I
    .end local v16    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v20    # "dataChanged":Z
    .end local v21    # "mInsideViewAccFocused":Z
    .end local v23    # "firstPosition":I
    .end local v24    # "sel":Landroid/view/View;
    .end local v25    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-nez v19, :cond_2c

    .line 1618
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1621
    :cond_2c
    return-void

    .line 1617
    :catchall_1
    move-exception v0

    goto :goto_16

    .end local v19    # "blockLayoutRequests":Z
    .local v2, "blockLayoutRequests":Z
    :catchall_2
    move-exception v0

    move/from16 v19, v2

    .end local v2    # "blockLayoutRequests":Z
    .restart local v19    # "blockLayoutRequests":Z
    :goto_16
    if-nez v19, :cond_2d

    .line 1618
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1620
    :cond_2d
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method greylist-max-o lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 287
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 288
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    if-ltz p1, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    return p1

    .line 293
    :cond_2
    :goto_0
    return v1

    .line 289
    :cond_3
    :goto_1
    return v1
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2182
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2184
    const/4 v0, -0x1

    .line 2185
    .local v0, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 2186
    iget v1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2190
    iget-object v1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 2191
    .local v1, "otherRect":Landroid/graphics/Rect;
    const v2, 0x7fffffff

    .line 2192
    .local v2, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    .line 2193
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 2195
    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2196
    goto :goto_1

    .line 2199
    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2200
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2201
    invoke-virtual {p0, v5, v1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2202
    invoke-static {p3, v1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 2204
    .local v6, "distance":I
    if-ge v6, v2, :cond_1

    .line 2205
    move v2, v6

    .line 2206
    move v0, v4

    .line 2193
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "distance":I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2211
    .end local v1    # "otherRect":Landroid/graphics/Rect;
    .end local v2    # "minDistance":I
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_2
    if-ltz v0, :cond_3

    .line 2212
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    .line 2214
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 2217
    :goto_2
    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v1, :cond_4

    .line 2218
    new-instance v1, Landroid/widget/GridView$3;

    invoke-direct {v1, p0}, Landroid/widget/GridView$3;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 2225
    :cond_4
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2663
    move-object v0, p0

    move/from16 v1, p2

    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2665
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v2

    .line 2666
    .local v2, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    .line 2667
    .local v3, "columnsCount":I
    div-int v4, v2, v3

    .line 2671
    .local v4, "rowsCount":I
    iget-boolean v5, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v5, :cond_0

    .line 2672
    rem-int v5, v1, v3

    .line 2673
    .local v5, "column":I
    div-int v6, v1, v3

    .local v6, "row":I
    goto :goto_0

    .line 2675
    .end local v5    # "column":I
    .end local v6    # "row":I
    :cond_0
    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v1

    .line 2677
    .local v5, "invertedIndex":I
    add-int/lit8 v6, v3, -0x1

    rem-int v7, v5, v3

    sub-int/2addr v6, v7

    .line 2678
    .local v6, "column":I
    add-int/lit8 v7, v4, -0x1

    div-int v8, v5, v3

    sub-int/2addr v7, v8

    move v5, v6

    move v6, v7

    .line 2681
    .local v5, "column":I
    .local v6, "row":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    .line 2682
    .local v7, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v7, :cond_1

    iget v8, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move v12, v8

    .line 2683
    .local v12, "isHeading":Z
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v14

    .line 2684
    .local v14, "isSelected":Z
    const/4 v9, 0x1

    const/4 v11, 0x1

    move v8, v6

    move v10, v5

    move v13, v14

    invoke-static/range {v8 .. v13}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v8

    .line 2686
    .local v8, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    move-object/from16 v9, p3

    invoke-virtual {v9, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2687
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2620
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2622
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2623
    .local v0, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    .line 2624
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 2625
    .local v2, "selectionMode":I
    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    .line 2627
    .local v3, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2629
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 2630
    :cond_0
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2632
    :cond_1
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1226
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1228
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1854
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1859
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1864
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1095
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1097
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1098
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1099
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1100
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1102
    .local v4, "heightSize":I
    if-nez v1, :cond_1

    .line 1103
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v5, :cond_0

    .line 1104
    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .end local v3    # "widthSize":I
    .local v5, "widthSize":I
    goto :goto_0

    .line 1106
    .end local v5    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_0
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .line 1108
    .end local v3    # "widthSize":I
    .restart local v5    # "widthSize":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v3, v5

    .line 1111
    .end local v5    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_1
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 1112
    .local v5, "childWidth":I
    invoke-direct {v0, v5}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v6

    .line 1114
    .local v6, "didNotInitiallyFit":Z
    const/4 v7, 0x0

    .line 1115
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1117
    .local v8, "childState":I
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v9, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    :goto_1
    iput v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1118
    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1119
    .local v9, "count":I
    const/4 v12, 0x1

    if-lez v9, :cond_4

    .line 1120
    iget-object v13, v0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {v0, v10, v13}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1122
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1123
    .local v14, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v14, :cond_3

    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 1125
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    :cond_3
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1128
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1129
    iput-boolean v12, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1131
    nop

    .line 1132
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v15

    iget v12, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1131
    invoke-static {v15, v10, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v12

    .line 1134
    .local v12, "childHeightSpec":I
    iget v15, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v11, 0x40000000    # 2.0f

    .line 1135
    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 1134
    invoke-static {v11, v10, v15}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v10

    .line 1136
    .local v10, "childWidthSpec":I
    invoke-virtual {v13, v10, v12}, Landroid/view/View;->measure(II)V

    .line 1138
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1139
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v8, v11}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v8

    .line 1141
    iget-object v11, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v11, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1142
    iget-object v11, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v15, -0x1

    invoke-virtual {v11, v13, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1146
    .end local v10    # "childWidthSpec":I
    .end local v12    # "childHeightSpec":I
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    if-nez v2, :cond_5

    .line 1147
    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    .line 1148
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int v4, v10, v11

    .line 1151
    :cond_5
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_9

    .line 1152
    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 1154
    .local v11, "ourSize":I
    iget v12, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1155
    .local v12, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v9, :cond_8

    .line 1156
    add-int/2addr v11, v7

    .line 1157
    add-int v14, v13, v12

    if-ge v14, v9, :cond_6

    .line 1158
    iget v14, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v11, v14

    .line 1160
    :cond_6
    if-lt v11, v4, :cond_7

    .line 1161
    move v11, v4

    .line 1162
    goto :goto_3

    .line 1155
    :cond_7
    add-int/2addr v13, v12

    goto :goto_2

    .line 1165
    .end local v13    # "i":I
    :cond_8
    :goto_3
    move v4, v11

    .line 1168
    .end local v11    # "ourSize":I
    .end local v12    # "numColumns":I
    :cond_9
    if-ne v1, v10, :cond_b

    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 1169
    iget v11, v0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr v11, v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v10, v12

    add-int/2addr v11, v10

    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v10

    .line 1172
    .restart local v11    # "ourSize":I
    if-gt v11, v3, :cond_a

    if-eqz v6, :cond_b

    .line 1173
    :cond_a
    const/high16 v10, 0x1000000

    or-int/2addr v3, v10

    .line 1177
    .end local v11    # "ourSize":I
    :cond_b
    invoke-virtual {v0, v3, v4}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1178
    move/from16 v10, p1

    iput v10, v0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 1179
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1242
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1244
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 1332
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    .line 1334
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    .line 1335
    new-instance v0, Landroid/widget/GridView$2;

    invoke-direct {v0, p0}, Landroid/widget/GridView$2;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1341
    :cond_0
    return-void
.end method

.method greylist-max-o pageScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2007
    const/4 v0, -0x1

    .line 2009
    .local v0, "nextPage":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-ne p1, v3, :cond_0

    .line 2010
    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 2011
    :cond_0
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 2012
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2015
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 2016
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2017
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2018
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 2019
    return v1

    .line 2022
    :cond_2
    return v2
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 2637
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2638
    return v1

    .line 2641
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2645
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 2646
    .local v0, "numColumns":I
    const/4 v2, -0x1

    const-string v3, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2647
    .local v2, "row":I
    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2648
    .local v3, "position":I
    if-ltz v2, :cond_1

    .line 2651
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 2652
    return v1

    .line 2657
    .end local v0    # "numColumns":I
    .end local v2    # "row":I
    .end local v3    # "position":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method greylist sequenceScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 2127
    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 2128
    .local v0, "selectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2129
    .local v1, "numColumns":I
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    .line 2133
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 2134
    div-int v3, v0, v1

    mul-int/2addr v3, v1

    .line 2135
    .local v3, "startOfRow":I
    add-int v6, v3, v1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "endOfRow":I
    goto :goto_0

    .line 2137
    .end local v3    # "startOfRow":I
    .end local v6    # "endOfRow":I
    :cond_0
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v0

    .line 2138
    .local v3, "invertedSelection":I
    add-int/lit8 v6, v2, -0x1

    div-int v7, v3, v1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    .line 2139
    .restart local v6    # "endOfRow":I
    sub-int v7, v6, v1

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v3, v7

    .line 2142
    .local v3, "startOfRow":I
    :goto_0
    const/4 v7, 0x0

    .line 2143
    .local v7, "moved":Z
    const/4 v8, 0x0

    .line 2144
    .local v8, "showScroll":Z
    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 2146
    :pswitch_0
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_3

    .line 2148
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2149
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2150
    const/4 v7, 0x1

    .line 2152
    if-ne v0, v6, :cond_1

    move v4, v5

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2157
    :pswitch_1
    if-lez v0, :cond_3

    .line 2159
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 2160
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 2161
    const/4 v7, 0x1

    .line 2163
    if-ne v0, v3, :cond_2

    move v4, v5

    :cond_2
    move v8, v4

    .line 2168
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 2169
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 2170
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 2173
    :cond_4
    if-eqz v8, :cond_5

    .line 2174
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 2177
    :cond_5
    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 77
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 242
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 247
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 248
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 251
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 254
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 257
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    iput v0, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 258
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mItemCount:I

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 260
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 262
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 263
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 265
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 268
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 269
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_0

    .line 271
    .end local v0    # "position":I
    :cond_1
    invoke-virtual {p0, v2, v0}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 273
    .restart local v0    # "position":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 274
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 275
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 276
    .end local v0    # "position":I
    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 279
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 282
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 283
    return-void
.end method

.method public blacklist setAddDeleteGridAnimator(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    .line 204
    iput-object p1, p0, Landroid/widget/GridView;->mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    .line 205
    return-void
.end method

.method public whitelist setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2432
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2433
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2434
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2436
    :cond_0
    return-void
.end method

.method public blacklist setDndGridAnimator(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    .line 209
    iput-object p1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 211
    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    new-instance v1, Landroid/widget/GridView$1;

    invoke-direct {v1, p0}, Landroid/widget/GridView$1;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    .line 217
    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2287
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2288
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 2289
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2291
    :cond_0
    return-void
.end method

.method public whitelist setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2316
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2317
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2318
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2320
    :cond_0
    return-void
.end method

.method public whitelist setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2481
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2482
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2483
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2485
    :cond_0
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 232
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1800
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1801
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 1803
    :cond_0
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    .line 1805
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1806
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_1

    .line 1807
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1809
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1811
    invoke-virtual {p0}, Landroid/widget/GridView;->semShowGoToTOP()V

    .line 1813
    return-void
.end method

.method greylist-max-o setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    .line 1822
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1824
    .local v0, "previousSelectedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 1827
    .local v1, "tmpFirstPosition":I
    iget-object v2, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_0

    .line 1828
    iget-object v2, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1831
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1832
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1834
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 1835
    :cond_1
    iget v2, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    :goto_0
    nop

    .line 1836
    .local v2, "next":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_2

    .line 1837
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_2
    move v3, v0

    .line 1839
    .local v3, "previous":I
    :goto_1
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v2, v4

    .line 1840
    .local v5, "nextRow":I
    div-int v4, v3, v4

    .line 1843
    .local v4, "previousRow":I
    iget v6, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eq v1, v6, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->semShowGoToTOP()V

    .line 1846
    :cond_3
    if-eq v5, v4, :cond_4

    .line 1847
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1850
    :cond_4
    return-void
.end method

.method public whitelist setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2405
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2406
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2407
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2409
    :cond_0
    return-void
.end method

.method public whitelist setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 2375
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2376
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2377
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2379
    :cond_0
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 917
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 918
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 907
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 908
    return-void
.end method
