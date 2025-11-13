.class public Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;
.super Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.source "SemDragAndDropHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemDragAndDropHListAnimator"


# instance fields
.field private blacklist mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private blacklist mListView:Landroid/widget/SemHorizontalListView;

.field blacklist mNonMovableItems:Landroid/util/SparseIntArray;

.field private blacklist mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final blacklist mScrollBarSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitDragIfNecessary(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDragIfNecessary(I)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/SemHorizontalListView;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 95
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    .line 97
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScrollBarSize:I

    .line 112
    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    .line 113
    invoke-virtual {p2, p0}, Landroid/widget/SemHorizontalListView;->setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initListeners()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 119
    return-void
.end method

.method private blacklist addNewTranslation(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "totalHeight"    # I

    .line 681
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    .line 682
    .local v0, "a":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v1, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v1, :cond_0

    .line 683
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    .local v1, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    goto :goto_0

    .line 685
    .end local v1    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    :cond_0
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    .line 688
    .restart local v1    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    :goto_0
    const/4 v2, 0x0

    .line 689
    .local v2, "xCurrentOffset":I
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 690
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v3

    float-to-int v2, v3

    .line 692
    :cond_1
    sub-int v3, p2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v3, v4, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 693
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 694
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    goto :goto_1

    .line 696
    :cond_2
    invoke-virtual {v1, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    .line 698
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 699
    return-void
.end method

.method private blacklist addReturningTranslation(I)V
    .locals 5
    .param p1, "position"    # I

    .line 668
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    .line 669
    .local v0, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v1, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-nez v1, :cond_0

    .line 670
    return-void

    .line 673
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    .line 674
    .local v1, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v2

    float-to-int v2, v2

    .line 675
    .local v2, "xCurrentOffset":I
    neg-int v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 676
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 677
    return-void
.end method

.method private blacklist checkDndGrabHandle(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 196
    .local v0, "childRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 201
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 204
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private blacklist checkStartDnd(III)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v0, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    .line 183
    .local v0, "canDrag":Z
    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p0, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakNotDraggableForAccessibility(I)V

    .line 186
    :cond_1
    return v0
.end method

.method private blacklist drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .line 798
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 799
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 801
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 802
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    sget-object v1, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->PRESSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 803
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 806
    :cond_1
    return-void
.end method

.method private blacklist drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 836
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 838
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, v0

    .line 839
    .local v1, "pos":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 841
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v4, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 844
    .end local v0    # "index":I
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method

.method private blacklist findDragItemPosition(I)I
    .locals 6
    .param p1, "x"    # I

    .line 624
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 625
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    .line 626
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_1

    .line 627
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 628
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 629
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 630
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    add-int v4, v2, v1

    return v4

    .line 627
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist findMovedItemPosition(I)I
    .locals 9
    .param p1, "x"    # I

    .line 639
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 640
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    .line 641
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_2

    .line 642
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 644
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    .line 645
    goto :goto_1

    .line 648
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 649
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 651
    const/4 v4, 0x0

    .line 652
    .local v4, "xPosAdjust":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    add-int v6, v2, v1

    invoke-virtual {v5, v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v5

    .line 653
    .local v5, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v6, v5, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v6, :cond_1

    .line 654
    move-object v6, v5

    check-cast v6, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v4

    .line 658
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    sub-int v7, p1, v4

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 659
    add-int v6, v2, v1

    return v6

    .line 642
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "xPosAdjust":I
    .end local v5    # "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .line 781
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 783
    .local v0, "drawableWidth":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 784
    .local v1, "drawableHeight":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 785
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 786
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 787
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 789
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 790
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 792
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v0, v1, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 795
    .end local v0    # "drawableWidth":I
    .end local v1    # "drawableHeight":I
    :cond_0
    return-void
.end method

.method private blacklist initDrag(I)Z
    .locals 12
    .param p1, "itemPosition"    # I

    .line 308
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    const-string v1, "SemDragAndDropHListAnimator"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 311
    const-string v0, "initDrag : #4 return false, mDragView is null."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v2

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalListView;->setEnableHoverDrawable(Z)V

    .line 317
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    .line 318
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    .line 319
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    .line 321
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakDragStartForAccessibility(I)V

    .line 325
    iget-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mUserSetDragItemBitmap:Z

    if-nez v3, :cond_5

    .line 326
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 327
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    :cond_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 332
    .local v3, "typedValue":Landroid/util/TypedValue;
    const/16 v4, 0x72de

    .line 333
    .local v4, "strokecolor":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 334
    .local v5, "strokeWidth":I
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010434

    invoke-virtual {v6, v7, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    .line 335
    .local v6, "isValid":Z
    if-eqz v6, :cond_2

    .line 336
    iget v4, v3, Landroid/util/TypedValue;->data:I

    goto :goto_1

    .line 338
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11200ba

    invoke-virtual {v7, v8, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 339
    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_3

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, v2

    .line 340
    .local v7, "isDeviceDefaultLight":Z
    :goto_0
    if-nez v7, :cond_4

    .line 341
    const v4, 0x3e91ff

    .line 344
    .end local v7    # "isDeviceDefaultLight":Z
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-static {v7}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 345
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 346
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 347
    .local v8, "paint":Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 348
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    int-to-float v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 350
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v10, v0

    iget-object v11, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v0

    invoke-direct {v9, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v9

    .line 351
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v7, v2, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 354
    .end local v2    # "r":Landroid/graphics/Rect;
    .end local v3    # "typedValue":Landroid/util/TypedValue;
    .end local v4    # "strokecolor":I
    .end local v5    # "strokeWidth":I
    .end local v6    # "isValid":Z
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_5
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->setDragViewAlpha(I)V

    .line 356
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 357
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    .line 359
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    .line 360
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v2, :cond_7

    .line 361
    const-string v2, "dndListener.OnDragAndDropStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropStart()V

    goto :goto_2

    .line 364
    :cond_7
    const-string v2, "dndListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 367
    return v0
.end method

.method private blacklist initDragIfNecessary(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 294
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    .line 295
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDrag(I)Z

    move-result v0

    return v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    .line 303
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist initListeners()V
    .locals 1

    .line 122
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    .line 149
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 155
    return-void
.end method

.method private blacklist isHeaderOrFooterViewPos(I)Z
    .locals 2
    .param p1, "pos"    # I

    .line 847
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 848
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTouchMove(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 421
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 422
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 424
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    .line 427
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    .line 428
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    .line 430
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 431
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    goto :goto_0

    .line 432
    :cond_1
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 433
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    .line 436
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 437
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstTouchX:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 438
    .local v1, "distance":I
    int-to-float v3, v1

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 439
    iput-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    .line 443
    .end local v1    # "distance":I
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    .line 445
    const/4 v3, 0x0

    .line 446
    .local v3, "needScroll":Z
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v4

    .line 447
    .local v4, "left":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v5, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 448
    .local v5, "temp":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 449
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v1

    add-int/2addr v4, v6

    .line 451
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/SemHorizontalListView;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    .line 452
    .local v6, "right":I
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 453
    if-eqz v5, :cond_5

    .line 454
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v1

    sub-int/2addr v6, v7

    .line 456
    :cond_5
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-gt v7, v6, :cond_6

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-ge v7, v4, :cond_9

    .line 457
    :cond_6
    const/4 v3, 0x1

    .line 458
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    if-nez v7, :cond_7

    .line 461
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const-wide/16 v10, 0x96

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/SemHorizontalListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 463
    :cond_7
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-le v7, v6, :cond_8

    .line 464
    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    .line 466
    :cond_8
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-ge v1, v4, :cond_9

    .line 467
    iput v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    .line 471
    :cond_9
    if-nez v3, :cond_a

    .line 472
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    .line 475
    :cond_a
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    if-nez v1, :cond_b

    .line 476
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 479
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->reorderIfNeeded()V

    .line 480
    return-void
.end method

.method private blacklist onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 504
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    .line 505
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .line 507
    .local v0, "firstVisiblePosition":I
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    const-string v2, "SemDragAndDropHListAnimator"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    .line 509
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "dndListener.onDragAndDropEnd() DND_TOUCH_STATUS_START"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 514
    :cond_0
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 515
    return-void

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 519
    .local v1, "dragView":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 520
    .local v5, "dropView":Landroid/view/View;
    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-nez v5, :cond_2

    goto :goto_0

    .line 569
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v4, :cond_3

    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    .line 573
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v3, :cond_8

    .line 574
    const-string v3, "dndListener.onDragAndDropEnd() mListItemSelectionAnimating is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    goto/16 :goto_3

    .line 578
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v4, v7

    .line 579
    .local v4, "offsetX":I
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 581
    .local v7, "deltaX":I
    new-instance v8, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    .line 583
    .local v8, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    invoke-virtual {v8, v4, v7, v6, v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 584
    const v9, 0x3f333333    # 0.7f

    invoke-virtual {v8, v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 586
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-virtual {v9, v10, v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 587
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 589
    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mRetainFirstDragViewPos:I

    .line 593
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v9, v6}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    .line 598
    iput-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDropDonePending:Z

    .line 602
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndTouchValuesAndBitmap()V

    .line 603
    const-string v3, "onTouchUp() start last animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 525
    .end local v4    # "offsetX":I
    .end local v7    # "deltaX":I
    .end local v8    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    :cond_4
    :goto_0
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v7, v8

    .line 526
    .local v7, "draggedBitmapLeft":I
    if-eqz v5, :cond_5

    move v8, v3

    goto :goto_1

    :cond_5
    move v8, v6

    .line 527
    .local v8, "dropViewVisible":Z
    :goto_1
    if-eqz v8, :cond_6

    .line 528
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "distance":I
    goto :goto_2

    .line 532
    .end local v9    # "distance":I
    :cond_6
    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-ge v9, v0, :cond_7

    .line 533
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v9, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v7, v9

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    neg-int v9, v9

    .restart local v9    # "distance":I
    goto :goto_2

    .line 534
    .end local v9    # "distance":I
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_9

    .line 535
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v7

    .line 541
    .restart local v9    # "distance":I
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dndListener.onTouchUp() dragView == null, distance = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-array v2, v4, [I

    aput v6, v2, v6

    aput v9, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 543
    .local v2, "va":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 550
    new-instance v3, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 567
    sget-object v3, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 569
    .end local v2    # "va":Landroid/animation/ValueAnimator;
    .end local v7    # "draggedBitmapLeft":I
    .end local v8    # "dropViewVisible":Z
    .end local v9    # "distance":I
    nop

    .line 606
    :cond_8
    :goto_3
    iput v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    .line 607
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v2, v3}, Landroid/widget/SemHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 608
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 609
    return-void

    .line 537
    .restart local v7    # "draggedBitmapLeft":I
    .restart local v8    # "dropViewVisible":Z
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mListView.getChildCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method

.method private blacklist recalculateOffset(II)V
    .locals 9
    .param p1, "prevPos"    # I
    .param p2, "newPos"    # I

    .line 702
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v0

    .line 703
    .local v0, "dividerWidth":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    .line 704
    .local v1, "firstVisiblePosition":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    .line 705
    .local v2, "childWidth":I
    const-string v3, "SemDragAndDropHListAnimator"

    const/4 v4, -0x1

    if-le p2, p1, :cond_7

    .line 706
    add-int/lit8 v5, p1, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, p2, :cond_6

    .line 707
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    if-le v5, v6, :cond_4

    .line 708
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v6, v7, v5}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 710
    move v6, v2

    .line 711
    .local v6, "totalWidth":I
    move v7, v5

    .line 712
    .local v7, "currentIdx":I
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/2addr v7, v4

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_0

    .line 713
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_1

    .line 716
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 717
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_2

    .line 719
    :cond_1
    neg-int v8, v6

    invoke-direct {p0, v5, v8}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    .line 721
    .end local v6    # "totalWidth":I
    .end local v7    # "currentIdx":I
    :goto_2
    goto :goto_3

    .line 722
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 723
    .local v6, "fixedView":Landroid/view/View;
    if-nez v6, :cond_3

    .line 726
    goto :goto_3

    .line 728
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    .end local v6    # "fixedView":Landroid/view/View;
    goto :goto_3

    .line 731
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 732
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_5

    .line 733
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recalculateOffset(\'dragging down\') no such item, i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    goto :goto_3

    .line 736
    :cond_5
    invoke-static {v6}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v7

    .line 737
    .local v7, "centerX":I
    invoke-direct {p0, v7}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 738
    .local v8, "movedPos":I
    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addReturningTranslation(I)V

    .line 706
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "centerX":I
    .end local v8    # "movedPos":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_6
    goto/16 :goto_8

    .line 742
    :cond_7
    add-int/lit8 v5, p1, -0x1

    .restart local v5    # "i":I
    :goto_4
    if-lt v5, p2, :cond_f

    .line 743
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    if-ge v5, v6, :cond_d

    .line 744
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v6, v7, v5}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 746
    move v6, v2

    .line 747
    .local v6, "totalWidth":I
    move v7, v5

    .line 748
    .local v7, "currentIdx":I
    :goto_5
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_8

    .line 749
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_5

    .line 752
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 753
    neg-int v8, v6

    invoke-direct {p0, v5, v8}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_6

    .line 755
    :cond_9
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_6

    .line 757
    .end local v6    # "totalWidth":I
    .end local v7    # "currentIdx":I
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-ne v6, v4, :cond_c

    .line 758
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 759
    .local v6, "fixedView":Landroid/view/View;
    if-nez v6, :cond_b

    .line 762
    goto :goto_7

    .line 764
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 765
    .end local v6    # "fixedView":Landroid/view/View;
    goto :goto_7

    .line 757
    :cond_c
    :goto_6
    goto :goto_7

    .line 767
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 768
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_e

    .line 769
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recalculateOffset(\'dragging up\') no such item, i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    goto :goto_7

    .line 772
    :cond_e
    invoke-static {v6}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v7

    .line 773
    .local v7, "centerX":I
    invoke-direct {p0, v7}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 774
    .restart local v8    # "movedPos":I
    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addReturningTranslation(I)V

    .line 742
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "centerX":I
    .end local v8    # "movedPos":I
    :goto_7
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_4

    .line 778
    .end local v5    # "i":I
    :cond_f
    :goto_8
    return-void
.end method

.method private blacklist startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 371
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 372
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 373
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    .line 375
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    .line 376
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 377
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 378
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 379
    return-void
.end method


# virtual methods
.method public blacklist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 855
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getPaddingTop()I

    move-result v0

    .line 857
    .local v0, "draggedItemY":I
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    .line 859
    .local v1, "draggedItemX":I
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 866
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 867
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 868
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 869
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 871
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    goto :goto_1

    .line 860
    :cond_1
    :goto_0
    return-void

    .line 873
    .end local v0    # "draggedItemY":I
    .end local v1    # "draggedItemX":I
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist getDragAndDropOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 221
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    .line 266
    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v3

    if-le v3, v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 269
    return v1

    .line 274
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-eqz v1, :cond_5

    .line 275
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 223
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    return v2

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 231
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    .line 232
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    .line 235
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstTouchX:I

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v3

    if-le v3, v1, :cond_5

    .line 239
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/SemHorizontalListView;->pointToPosition(II)I

    move-result v3

    .line 240
    .local v3, "itemPosition":I
    const/4 v4, -0x1

    const-string v5, "SemDragAndDropHListAnimator"

    if-ne v3, v4, :cond_2

    .line 241
    const-string v1, "onInterceptTouchEvent : #1 return false, itemPosition invalid."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v2

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    const-string v1, "onInterceptTouchEvent : #2 return false, activated By longPress."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v2

    .line 250
    :cond_3
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    .line 251
    invoke-direct {p0, v4, v6, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 253
    invoke-direct {p0, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDrag(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 254
    return v1

    .line 259
    :cond_4
    const-string v1, "onInterceptTouchEvent : #3 resetDndState"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    .line 281
    .end local v3    # "itemPosition":I
    :cond_5
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 387
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 389
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 403
    :pswitch_1
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    .line 404
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 405
    .local v4, "pointerId":I
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    if-ne v4, v5, :cond_2

    .line 408
    if-nez v2, :cond_1

    move v1, v3

    .line 409
    .local v1, "newPointerIndex":I
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    .line 410
    .end local v1    # "newPointerIndex":I
    goto :goto_0

    .line 394
    .end local v2    # "pointerIndex":I
    .end local v4    # "pointerId":I
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    .line 395
    goto :goto_0

    .line 399
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    .line 400
    goto :goto_0

    .line 391
    :pswitch_4
    nop

    .line 416
    :cond_2
    :goto_0
    return v3

    .line 384
    .end local v0    # "action":I
    :cond_3
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 829
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 830
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    .line 831
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 833
    :cond_0
    return-void
.end method

.method public blacklist preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 810
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 811
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, v0

    .line 813
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDropDonePending:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    .line 814
    return v3

    .line 817
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v2

    .line 818
    .local v2, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    .line 819
    if-eqz v2, :cond_1

    .line 820
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 821
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    .line 822
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 824
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method blacklist reorderIfNeeded()V
    .locals 5

    .line 484
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    .line 486
    .local v0, "prevDestPosition":I
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 487
    .local v1, "adjustedX":I
    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findDragItemPosition(I)I

    move-result v2

    .line 488
    .local v2, "dragPos":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    .line 493
    :cond_0
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-eq v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v3, :cond_1

    .line 494
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->recalculateOffset(II)V

    .line 495
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 498
    :cond_1
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 499
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 501
    :cond_3
    return-void
.end method

.method blacklist resetDndPositionValues()V
    .locals 2

    .line 619
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    .line 620
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnableHoverDrawable(Z)V

    .line 621
    return-void
.end method

.method blacklist resetDndTouchValuesAndBitmap()V
    .locals 1

    .line 613
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    .line 614
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 615
    return-void
.end method

.method public whitelist setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 1
    .param p1, "dndController"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 165
    if-nez p1, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 167
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    goto :goto_0

    .line 173
    :cond_1
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 175
    :goto_0
    return-void
.end method

.method public blacklist startDrag()Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 214
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDragIfNecessary(I)Z

    move-result v1

    return v1
.end method
