.class public Lcom/samsung/android/animation/SemDragAndDropGridAnimator;
.super Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.source "SemDragAndDropGridAnimator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemDragAndDropGridAnimator"


# instance fields
.field private blacklist mGridView:Landroid/widget/GridView;

.field private blacklist mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private blacklist mItemHeight:I

.field private blacklist mItemWidth:I

.field blacklist mNonMovableItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitDragIfNecessary(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initDragIfNecessary(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDragViewBitmap(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->updateDragViewBitmap()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/widget/GridView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridview"    # Landroid/widget/GridView;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    .line 114
    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    .line 115
    invoke-virtual {p2, p0}, Landroid/widget/GridView;->setDndGridAnimator(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    .line 117
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    .line 118
    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initListeners()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 126
    return-void
.end method

.method private blacklist addNewTranslation(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v1

    .line 767
    .local v1, "a":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v2, v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v2, :cond_0

    .line 768
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    goto :goto_0

    .line 770
    :cond_0
    new-instance v2, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    move-object v0, v2

    .line 773
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v2

    .line 774
    .local v2, "currentDestOffsetX":I
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v3

    .line 775
    .local v3, "currentDestOffsetY":I
    const/4 v4, 0x0

    .line 776
    .local v4, "currentOffsetX":I
    const/4 v5, 0x0

    .line 777
    .local v5, "currentOffsetY":I
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 778
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v6

    float-to-int v4, v6

    .line 779
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v6

    float-to-int v5, v6

    .line 782
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 783
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    goto :goto_1

    .line 785
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    .line 787
    :goto_1
    add-int v6, p2, v2

    .line 788
    .local v6, "destOffsetX":I
    add-int v7, p3, v3

    .line 789
    .local v7, "destOffsetY":I
    sub-int v8, v6, v4

    sub-int v9, v7, v5

    invoke-virtual {v0, v6, v8, v7, v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 790
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v8, p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 791
    return-void
.end method

.method private blacklist addReturningTranslation(I)V
    .locals 7
    .param p1, "position"    # I

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v1

    .line 797
    .local v1, "a":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    const/4 v2, 0x0

    .line 798
    .local v2, "xPosAdjust":I
    const/4 v3, 0x0

    .line 800
    .local v3, "yPosAdjust":I
    instance-of v4, v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v4, :cond_0

    .line 801
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    .line 802
    move-object v4, v1

    check-cast v4, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v4

    float-to-int v2, v4

    .line 803
    move-object v4, v1

    check-cast v4, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v4

    float-to-int v3, v4

    goto :goto_0

    .line 805
    :cond_0
    new-instance v4, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    move-object v0, v4

    .line 808
    :goto_0
    neg-int v4, v2

    neg-int v5, v3

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4, v6, v5}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 809
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 810
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v4, p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 811
    return-void
.end method

.method private blacklist checkDndGrabHandle(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v0, "childRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 196
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 199
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 202
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private blacklist checkStartDnd(III)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v0, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    .line 181
    .local v0, "canDrag":Z
    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0, p3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->speakNotDraggableForAccessibility(I)V

    .line 184
    :cond_1
    return v0
.end method

.method private blacklist drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .line 841
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 842
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 844
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 845
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    sget-object v1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->PRESSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 846
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 847
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 849
    :cond_1
    return-void
.end method

.method private blacklist drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 879
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p2}, Landroid/widget/GridView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 881
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, v0

    .line 882
    .local v1, "pos":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 884
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v4, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 887
    .end local v0    # "index":I
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method

.method private blacklist findMovedItemIndex(Landroid/view/View;)I
    .locals 12
    .param p1, "child"    # Landroid/view/View;

    .line 603
    invoke-static {p1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    .line 604
    .local v0, "x":I
    invoke-static {p1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v1

    .line 605
    .local v1, "y":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 606
    .local v2, "childCount":I
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 607
    .local v3, "firstVisiblePosition":I
    if-lez v2, :cond_3

    .line 608
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 609
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 610
    .local v5, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 612
    const/4 v6, 0x0

    .line 613
    .local v6, "xPosAdjust":I
    const/4 v7, 0x0

    .line 614
    .local v7, "yPosAdjust":I
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    add-int v9, v4, v3

    invoke-virtual {v8, v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v8

    .line 615
    .local v8, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v9, v8, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v9, :cond_0

    .line 616
    move-object v9, v8

    check-cast v9, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v6

    .line 617
    move-object v9, v8

    check-cast v9, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v7

    .line 620
    :cond_0
    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    sub-int/2addr v9, v3

    if-ne v4, v9, :cond_1

    .line 621
    goto :goto_1

    .line 624
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    sub-int v10, v0, v6

    sub-int v11, v1, v7

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 625
    add-int v9, v4, v3

    return v9

    .line 608
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "xPosAdjust":I
    .end local v7    # "yPosAdjust":I
    .end local v8    # "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 629
    .end local v4    # "i":I
    :cond_3
    const/4 v4, -0x1

    return v4
.end method

.method private blacklist findMovingArrage()V
    .locals 7

    .line 636
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 637
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 638
    .local v0, "v1":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 639
    .local v2, "v2":Landroid/view/View;
    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 644
    .local v3, "r1":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 645
    .local v4, "r2":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 646
    invoke-virtual {v2, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 648
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    .line 649
    .end local v0    # "v1":Landroid/view/View;
    .end local v2    # "v2":Landroid/view/View;
    .end local v3    # "r1":Landroid/graphics/Rect;
    .end local v4    # "r2":Landroid/graphics/Rect;
    goto :goto_1

    .line 640
    .restart local v0    # "v1":Landroid/view/View;
    .restart local v2    # "v2":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 650
    .end local v0    # "v1":Landroid/view/View;
    .end local v2    # "v2":Landroid/view/View;
    :cond_2
    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    .line 653
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 654
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 655
    .restart local v0    # "v1":Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 656
    .local v1, "v2":Landroid/view/View;
    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    .line 660
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 661
    .local v2, "r1":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 662
    .local v3, "r2":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 663
    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 665
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    .line 666
    .end local v0    # "v1":Landroid/view/View;
    .end local v1    # "v2":Landroid/view/View;
    .end local v2    # "r1":Landroid/graphics/Rect;
    .end local v3    # "r2":Landroid/graphics/Rect;
    goto :goto_3

    .line 657
    .restart local v0    # "v1":Landroid/view/View;
    .restart local v1    # "v2":Landroid/view/View;
    :cond_4
    :goto_2
    return-void

    .line 667
    .end local v0    # "v1":Landroid/view/View;
    .end local v1    # "v2":Landroid/view/View;
    :cond_5
    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    .line 669
    :goto_3
    return-void
.end method

.method private blacklist getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .line 814
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 816
    .local v0, "drawableWidth":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 817
    .local v7, "drawableHeight":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v8

    .line 819
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_0

    .line 820
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 821
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 822
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 823
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 825
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePosGravity:I

    const/4 v6, 0x1

    move v2, v0

    move v3, v7

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 828
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 829
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 830
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 831
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 833
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePosGravity:I

    const/4 v6, 0x0

    move v2, v0

    move v3, v7

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 838
    .end local v0    # "drawableWidth":I
    .end local v7    # "drawableHeight":I
    .end local v8    # "isLayoutRtl":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initDrag(I)Z
    .locals 2
    .param p1, "itemPosition"    # I

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->findMovingArrage()V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    return v1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnableHoverDrawable(Z)V

    .line 302
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    .line 303
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    .line 304
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    .line 306
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->speakDragStartForAccessibility(I)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->updateDragViewBitmap()V

    .line 317
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->setDragViewAlpha(I)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 320
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    .line 321
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_3

    .line 325
    const-string v0, "SemDragAndDropGridAnimator"

    const-string v1, "dndListener.OnDragAndDropStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropStart()V

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidate()V

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist initDragIfNecessary(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 280
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    .line 281
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initDrag(I)Z

    move-result v0

    return v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    .line 289
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist initListeners()V
    .locals 1

    .line 129
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;-><init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    .line 156
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$2;-><init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 163
    return-void
.end method

.method private blacklist onTouchMove(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    .line 507
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    .line 508
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstTouchX:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 510
    .local v0, "distanceX":I
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstTouchY:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 511
    .local v2, "distanceY":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 512
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->updateDragViewBitmap()V

    .line 517
    .end local v0    # "distanceX":I
    .end local v2    # "distanceY":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v0

    .line 518
    .local v0, "top":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 519
    .local v2, "temp":Landroid/view/View;
    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 522
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 523
    .local v4, "bottom":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 524
    if-eqz v2, :cond_2

    .line 525
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v3

    sub-int/2addr v4, v5

    .line 527
    :cond_2
    const/4 v5, 0x0

    .line 528
    .local v5, "needScroll":Z
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    if-gt v6, v4, :cond_3

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    if-ge v6, v0, :cond_6

    .line 529
    :cond_3
    const/4 v5, 0x1

    .line 530
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_4

    .line 533
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const-wide/16 v9, 0x96

    invoke-virtual {v6, v8, v9, v10}, Landroid/widget/GridView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 535
    :cond_4
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    if-le v6, v4, :cond_5

    .line 536
    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    .line 538
    :cond_5
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    if-ge v3, v0, :cond_6

    .line 539
    iput v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    .line 543
    :cond_6
    if-nez v5, :cond_7

    .line 544
    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    .line 547
    :cond_7
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    if-nez v1, :cond_8

    .line 548
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 551
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->reorderIfNeeded()V

    .line 552
    return-void
.end method

.method private blacklist onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 366
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    const/4 v2, 0x1

    const-string v3, "SemDragAndDropGridAnimator"

    if-ne v1, v2, :cond_0

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    .line 368
    iget-object v1, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v1, :cond_0

    .line 369
    const-string v1, "dndListener.onDragAndDropEnd() DND_TOUCH_STATUS_START"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 374
    :cond_0
    iget v1, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 375
    return-void

    .line 378
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 379
    .local v1, "firstVisiblePosition":I
    iget-object v5, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    .line 380
    .local v5, "childCount":I
    iget-object v6, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget v7, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    sub-int/2addr v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 381
    .local v6, "dragView":Landroid/view/View;
    iget-object v7, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget v8, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 382
    .local v7, "dropView":Landroid/view/View;
    const/4 v8, 0x0

    if-eqz v6, :cond_4

    if-nez v7, :cond_2

    goto :goto_0

    .line 445
    :cond_2
    iget-boolean v4, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    if-eqz v4, :cond_3

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    .line 449
    iget-object v2, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v2, :cond_9

    .line 450
    const-string v2, "dndListener.onDragAndDropEnd() mListItemSelectionAnimating is true"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    goto/16 :goto_3

    .line 455
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 456
    .local v3, "destOffsetX":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v4, v9

    .line 457
    .local v4, "destOffsetY":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v11, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    .line 458
    .local v9, "deltaX":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 460
    .local v10, "deltaY":I
    new-instance v11, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v11}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    .line 461
    .local v11, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    invoke-virtual {v11, v3, v9, v4, v10}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 462
    const v12, 0x3f333333    # 0.7f

    invoke-virtual {v11, v12}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 464
    iget-object v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v13, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-virtual {v12, v13, v11}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 465
    iget-object v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v12}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 467
    iget v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    sub-int/2addr v12, v1

    iput v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mRetainFirstDragViewPos:I

    .line 471
    iget-object v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v12, v8}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 476
    iput-boolean v2, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDropDonePending:Z

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndTouchValuesAndBitmap()V

    goto/16 :goto_3

    .line 387
    .end local v3    # "destOffsetX":I
    .end local v4    # "destOffsetY":I
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    :cond_4
    :goto_0
    iget v9, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v10, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v9, v10

    .line 388
    .local v9, "draggedBitmapLeft":I
    iget v10, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v11, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v10, v11

    .line 389
    .local v10, "draggedBitmapTop":I
    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    move v2, v8

    .line 390
    .local v2, "dropViewVisible":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 391
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v9

    .line 392
    .local v8, "distanceX":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v10

    .local v11, "distanceY":I
    goto/16 :goto_2

    .line 394
    .end local v8    # "distanceX":I
    .end local v11    # "distanceY":I
    :cond_6
    iget-object v8, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getNumColumns()I

    move-result v8

    .line 396
    .local v8, "numOfColumns":I
    if-ge v5, v8, :cond_7

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Child cound ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v11, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v11}, Landroid/widget/GridView;->getChildCount()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ") is smaller than column count ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ")"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    .line 400
    return-void

    .line 404
    :cond_7
    iget v11, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-ge v11, v1, :cond_8

    .line 405
    iget v11, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    rem-int/2addr v11, v8

    .line 406
    .local v11, "index":I
    iget-object v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v12, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v12, v9

    .line 407
    .local v12, "distanceX":I
    iget-object v13, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v13}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v13

    neg-int v13, v13

    sub-int/2addr v13, v10

    iget-object v14, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int v11, v13, v14

    .line 408
    .local v11, "distanceY":I
    move v8, v12

    goto :goto_2

    .line 409
    .end local v11    # "distanceY":I
    .end local v12    # "distanceX":I
    :cond_8
    iget-object v11, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v11}, Landroid/widget/GridView;->getChildCount()I

    move-result v11

    iget v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    rem-int/2addr v12, v8

    add-int/2addr v11, v12

    sub-int/2addr v11, v8

    .line 410
    .local v11, "index":I
    iget-object v12, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v12, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v12, v9

    .line 411
    .restart local v12    # "distanceX":I
    iget-object v13, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v13}, Landroid/widget/GridView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move v8, v12

    move v11, v13

    .line 414
    .end local v12    # "distanceX":I
    .local v8, "distanceX":I
    .local v11, "distanceY":I
    :goto_2
    move v12, v11

    .line 415
    .local v12, "distY":I
    move v13, v8

    .line 416
    .local v13, "distX":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dndListener.onTouchUp() dragView == null, distanceX="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", distanceY="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 418
    .local v3, "va":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;

    invoke-direct {v4, v0, v13, v12}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;-><init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 426
    new-instance v4, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;

    invoke-direct {v4, v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;-><init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    const-wide/16 v14, 0xd2

    invoke-virtual {v3, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 443
    sget-object v4, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 444
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 445
    .end local v2    # "dropViewVisible":Z
    .end local v3    # "va":Landroid/animation/ValueAnimator;
    .end local v8    # "distanceX":I
    .end local v9    # "draggedBitmapLeft":I
    .end local v10    # "draggedBitmapTop":I
    .end local v11    # "distanceY":I
    .end local v12    # "distY":I
    .end local v13    # "distX":I
    nop

    .line 483
    :cond_9
    :goto_3
    iget-object v2, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v3, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 484
    iget-object v2, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->invalidate()V

    .line 485
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist recalculateOffset(II)V
    .locals 13
    .param p1, "prevDestPosition"    # I
    .param p2, "newDestPosition"    # I

    .line 678
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 680
    .local v0, "firstVisiblePosition":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 681
    .local v1, "numColumnes":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v2

    .line 683
    .local v2, "isLayoutRtl":Z
    const-string v3, "SemDragAndDropGridAnimator"

    if-le p2, p1, :cond_6

    .line 685
    add-int/lit8 v4, p1, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, p2, :cond_5

    .line 686
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    if-le v4, v5, :cond_3

    .line 687
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, v4}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 689
    add-int/lit8 v5, v4, -0x1

    .line 690
    .local v5, "currentIdx":I
    const/4 v6, 0x0

    .line 691
    .local v6, "skipCount":I
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 692
    add-int/lit8 v6, v6, 0x1

    .line 693
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 695
    :cond_0
    move v7, v4

    .line 696
    .local v7, "startIndex":I
    add-int/lit8 v8, v4, -0x1

    sub-int/2addr v8, v6

    .line 697
    .local v8, "endIndex":I
    div-int v9, v8, v1

    div-int v10, v7, v1

    sub-int/2addr v9, v10

    .line 698
    .local v9, "rowDiff":I
    rem-int v10, v8, v1

    rem-int v11, v7, v1

    sub-int/2addr v10, v11

    .line 699
    .local v10, "columnDiff":I
    const/4 v11, 0x0

    .line 700
    .local v11, "deltaX":I
    if-eqz v2, :cond_1

    .line 701
    iget v12, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    mul-int/2addr v12, v10

    mul-int/lit8 v12, v12, -0x1

    .end local v11    # "deltaX":I
    .local v12, "deltaX":I
    goto :goto_2

    .line 703
    .end local v12    # "deltaX":I
    .restart local v11    # "deltaX":I
    :cond_1
    iget v12, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    mul-int/2addr v12, v10

    .line 706
    .end local v11    # "deltaX":I
    .restart local v12    # "deltaX":I
    :goto_2
    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    mul-int/2addr v11, v9

    .line 707
    .local v11, "deltaY":I
    invoke-direct {p0, v4, v12, v11}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->addNewTranslation(III)V

    .line 709
    .end local v5    # "currentIdx":I
    .end local v6    # "skipCount":I
    .end local v7    # "startIndex":I
    .end local v8    # "endIndex":I
    .end local v9    # "rowDiff":I
    .end local v10    # "columnDiff":I
    .end local v11    # "deltaY":I
    .end local v12    # "deltaX":I
    goto :goto_3

    .line 710
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 713
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    sub-int v6, v4, v0

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 714
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_4

    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recalculateOffset(\'dragging down\') no such item, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    goto :goto_3

    .line 718
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->findMovedItemIndex(Landroid/view/View;)I

    move-result v6

    .line 719
    .local v6, "movedPos":I
    invoke-direct {p0, v6}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->addReturningTranslation(I)V

    .line 685
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "movedPos":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_5
    goto/16 :goto_8

    .line 724
    :cond_6
    add-int/lit8 v4, p1, -0x1

    .restart local v4    # "i":I
    :goto_4
    if-lt v4, p2, :cond_c

    .line 725
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    if-ge v4, v5, :cond_a

    .line 726
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, v4}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 728
    add-int/lit8 v5, v4, 0x1

    .line 729
    .local v5, "currentIdx":I
    const/4 v6, 0x0

    .line 730
    .local v6, "skipCount":I
    :goto_5
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 731
    add-int/lit8 v6, v6, 0x1

    .line 732
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 734
    :cond_7
    move v7, v4

    .line 735
    .restart local v7    # "startIndex":I
    add-int/lit8 v8, v4, 0x1

    add-int/2addr v8, v6

    .line 736
    .restart local v8    # "endIndex":I
    div-int v9, v8, v1

    div-int v10, v7, v1

    sub-int/2addr v9, v10

    .line 737
    .restart local v9    # "rowDiff":I
    rem-int v10, v8, v1

    rem-int v11, v7, v1

    sub-int/2addr v10, v11

    .line 738
    .restart local v10    # "columnDiff":I
    const/4 v11, 0x0

    .line 739
    .local v11, "deltaX":I
    if-eqz v2, :cond_8

    .line 740
    iget v12, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    mul-int/2addr v12, v10

    mul-int/lit8 v12, v12, -0x1

    .end local v11    # "deltaX":I
    .restart local v12    # "deltaX":I
    goto :goto_6

    .line 742
    .end local v12    # "deltaX":I
    .restart local v11    # "deltaX":I
    :cond_8
    iget v12, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    mul-int/2addr v12, v10

    .line 745
    .end local v11    # "deltaX":I
    .restart local v12    # "deltaX":I
    :goto_6
    iget v11, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    mul-int/2addr v11, v9

    .line 746
    .local v11, "deltaY":I
    invoke-direct {p0, v4, v12, v11}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->addNewTranslation(III)V

    .line 747
    .end local v5    # "currentIdx":I
    .end local v6    # "skipCount":I
    .end local v7    # "startIndex":I
    .end local v8    # "endIndex":I
    .end local v9    # "rowDiff":I
    .end local v10    # "columnDiff":I
    .end local v11    # "deltaY":I
    .end local v12    # "deltaX":I
    goto :goto_7

    .line 748
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 751
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    sub-int v6, v4, v0

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 752
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_b

    .line 753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recalculateOffset(\'dragging up\') no such item, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    goto :goto_7

    .line 756
    :cond_b
    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->findMovedItemIndex(Landroid/view/View;)I

    move-result v6

    .line 757
    .local v6, "movedPos":I
    invoke-direct {p0, v6}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->addReturningTranslation(I)V

    .line 724
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "movedPos":I
    :goto_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 761
    .end local v4    # "i":I
    :cond_c
    :goto_8
    return-void
.end method

.method private blacklist startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 333
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 334
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    .line 337
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    .line 338
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 339
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 340
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 341
    return-void
.end method

.method private blacklist updateDragViewBitmap()V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 915
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 892
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    if-nez v0, :cond_0

    .line 894
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v0, v1

    .line 895
    .local v0, "draggedItemX":I
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v1, v2

    .line 897
    .local v1, "draggedItemY":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 900
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 901
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 902
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 903
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 905
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3, v3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 908
    .end local v0    # "draggedItemX":I
    .end local v1    # "draggedItemY":I
    :cond_0
    return-void
.end method

.method public whitelist getDragAndDropOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 208
    .local v0, "action":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 245
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    .line 246
    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    if-le v3, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->activatedByLongPress()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    return v2

    .line 254
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    if-eqz v2, :cond_4

    .line 255
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    return v1

    .line 214
    :cond_0
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstTouchX:I

    .line 215
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstTouchY:I

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 222
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v3

    .line 223
    .local v3, "itemPosition":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 224
    return v1

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->activatedByLongPress()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    return v1

    .line 231
    :cond_2
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    .line 232
    invoke-direct {p0, v4, v5, v3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    invoke-direct {p0, v3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initDrag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    return v2

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    .line 262
    .end local v3    # "itemPosition":I
    :cond_4
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 267
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 351
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 353
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    .line 354
    goto :goto_0

    .line 357
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    .line 358
    nop

    .line 362
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 347
    .end local v0    # "action":I
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 872
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 873
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    .line 874
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 876
    :cond_0
    return-void
.end method

.method public blacklist preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 853
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p2}, Landroid/widget/GridView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 854
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, v0

    .line 856
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDropDonePending:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    .line 857
    return v3

    .line 860
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v2

    .line 861
    .local v2, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mCanvasSaveCount:I

    .line 862
    if-eqz v2, :cond_1

    .line 863
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mCanvasSaveCount:I

    .line 865
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 867
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method blacklist reorderIfNeeded()V
    .locals 7

    .line 557
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    .line 560
    .local v0, "prevDestPosition":I
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 561
    .local v1, "adjustedX":I
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 562
    .local v2, "adjustedY":I
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v3

    .line 564
    .local v3, "dragPos":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 565
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    goto :goto_3

    .line 569
    :cond_0
    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-le v4, v3, :cond_3

    .line 570
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-ge v4, v5, :cond_2

    .line 571
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, v4}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 572
    iput v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    .line 573
    goto :goto_1

    .line 570
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_2
    :goto_1
    goto :goto_3

    .line 577
    :cond_3
    add-int/lit8 v4, v3, -0x1

    .restart local v4    # "i":I
    :goto_2
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-le v4, v5, :cond_5

    .line 578
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, v4}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 579
    iput v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    .line 580
    goto :goto_3

    .line 577
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 588
    .end local v4    # "i":I
    :cond_5
    :goto_3
    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-eq v0, v4, :cond_6

    .line 589
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    .line 590
    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->recalculateOffset(II)V

    .line 591
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 593
    :cond_6
    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-ne v0, v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    .line 594
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->invalidate()V

    .line 596
    :cond_8
    return-void
.end method

.method blacklist resetDndPositionValues()V
    .locals 2

    .line 498
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnableHoverDrawable(Z)V

    .line 500
    return-void
.end method

.method blacklist resetDndTouchValuesAndBitmap()V
    .locals 1

    .line 489
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    .line 491
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    .line 492
    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    .line 493
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 494
    return-void
.end method

.method public whitelist setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 0
    .param p1, "dndController"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 172
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 173
    return-void
.end method
