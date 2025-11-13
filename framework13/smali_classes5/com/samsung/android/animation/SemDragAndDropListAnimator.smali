.class public Lcom/samsung/android/animation/SemDragAndDropListAnimator;
.super Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.source "SemDragAndDropListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemDragAndDropListAnimator"


# instance fields
.field private blacklist mDragViewRoundCorner:I

.field private blacklist mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private blacklist mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private blacklist mListView:Landroid/widget/ListView;

.field blacklist mNonMovableItems:Landroid/util/SparseIntArray;

.field private final blacklist mScrollBarSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitDragIfNecessary(Lcom/samsung/android/animation/SemDragAndDropListAnimator;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDragIfNecessary(I)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/ListView;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    .line 99
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScrollBarSize:I

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRoundCorner:I

    .line 115
    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initListeners()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 120
    return-void
.end method

.method private blacklist addNewTranslation(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "totalHeight"    # I

    .line 694
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    .line 695
    .local v0, "a":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v1, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v1, :cond_0

    .line 696
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    .local v1, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    goto :goto_0

    .line 698
    .end local v1    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    :cond_0
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    .line 701
    .restart local v1    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    :goto_0
    const/4 v2, 0x0

    .line 702
    .local v2, "yCurrentOffset":I
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 703
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    .line 705
    :cond_1
    sub-int v3, p2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, p2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 706
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 707
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    goto :goto_1

    .line 709
    :cond_2
    invoke-virtual {v1, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    .line 711
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 712
    return-void
.end method

.method private blacklist addReturningTranslation(I)V
    .locals 5
    .param p1, "position"    # I

    .line 681
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    .line 682
    .local v0, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v1, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-nez v1, :cond_0

    .line 683
    return-void

    .line 686
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    .line 687
    .local v1, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v2

    float-to-int v2, v2

    .line 688
    .local v2, "yCurrentOffset":I
    neg-int v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 689
    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 690
    return-void
.end method

.method private blacklist checkDndGrabHandle(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 206
    .local v0, "childRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 208
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 211
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 214
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private blacklist checkStartDnd(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .line 182
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->semIsLongPressTriggeredByKey()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemDragAndDropListAnimator"

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "checkStartDnd : LongPress is triggered by key, return false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v1

    .line 187
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    return v1

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStartDnd : canDrag #1 itemPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v0, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    .line 193
    .local v0, "canDrag":Z
    if-nez v0, :cond_2

    .line 194
    invoke-virtual {p0, p3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakNotDraggableForAccessibility(I)V

    .line 196
    :cond_2
    return v0
.end method

.method private blacklist drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawDragHandle : isAllowDragItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemDragAndDropListAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 836
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 838
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 839
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    sget-object v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->PRESSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 840
    const-string v0, "drawDragHandle : call mDragGrabHandleDrawable.draw.. "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 843
    :cond_1
    const-string v0, "drawDragHandle : not draw drageGrabHandle~~!! "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_1
    return-void
.end method

.method private blacklist drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 876
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 878
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, v0

    .line 879
    .local v1, "pos":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 880
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawDragHandlerIfNeeded : canDrag #2 pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemDragAndDropListAnimator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v4, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 885
    .end local v0    # "index":I
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method

.method private blacklist findDragItemPosition(I)I
    .locals 6
    .param p1, "y"    # I

    .line 637
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 638
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 639
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_1

    .line 640
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 641
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 642
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 643
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    add-int v4, v2, v1

    return v4

    .line 640
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist findMovedItemPosition(I)I
    .locals 9
    .param p1, "y"    # I

    .line 652
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 653
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 654
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_2

    .line 655
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 657
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    .line 658
    goto :goto_1

    .line 661
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 662
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 664
    const/4 v4, 0x0

    .line 665
    .local v4, "yPosAdjust":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    add-int v6, v2, v1

    invoke-virtual {v5, v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v5

    .line 666
    .local v5, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    instance-of v6, v5, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v6, :cond_1

    .line 667
    move-object v6, v5

    check-cast v6, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v4

    .line 671
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v8, p1, v4

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 672
    add-int v6, v2, v1

    return v6

    .line 655
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "yPosAdjust":I
    .end local v5    # "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .line 802
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 804
    .local v0, "drawableWidth":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 805
    .local v7, "drawableHeight":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isLayoutRtl()Z

    move-result v8

    .line 807
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_0

    .line 808
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 809
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 810
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 811
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 813
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 814
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 816
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v6, 0x1

    move v2, v0

    move v3, v7

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 819
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 820
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 821
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 822
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 824
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xa

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 825
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0xa

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 827
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v6, 0x0

    move v2, v0

    move v3, v7

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 831
    .end local v0    # "drawableWidth":I
    .end local v7    # "drawableHeight":I
    .end local v8    # "isLayoutRtl":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initDrag(I)Z
    .locals 11
    .param p1, "itemPosition"    # I

    .line 315
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 318
    return v1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnableHoverDrawable(Z)V

    .line 323
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    .line 324
    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    .line 325
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    .line 327
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakDragStartForAccessibility(I)V

    .line 331
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mUserSetDragItemBitmap:Z

    if-nez v2, :cond_6

    .line 332
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->semGetRoundedCorners()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRoundCorner:I

    .line 338
    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 340
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 343
    :cond_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 344
    .local v2, "typedValue":Landroid/util/TypedValue;
    const/16 v3, 0x72de

    .line 345
    .local v3, "strokecolor":I
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 346
    .local v4, "strokeWidth":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010434

    invoke-virtual {v5, v6, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    .line 347
    .local v5, "isValid":Z
    if-eqz v5, :cond_3

    .line 348
    iget v3, v2, Landroid/util/TypedValue;->data:I

    goto :goto_1

    .line 350
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200ba

    invoke-virtual {v6, v7, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 351
    iget v6, v2, Landroid/util/TypedValue;->data:I

    if-nez v6, :cond_4

    move v6, v0

    goto :goto_0

    :cond_4
    move v6, v1

    .line 352
    .local v6, "isDeviceDefaultLight":Z
    :goto_0
    if-nez v6, :cond_5

    .line 353
    const v3, 0x3e91ff

    .line 356
    .end local v6    # "isDeviceDefaultLight":Z
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-static {v6}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 357
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 358
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 359
    .local v7, "paint":Landroid/graphics/Paint;
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 362
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v0

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v0

    invoke-direct {v8, v1, v1, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v8

    .line 363
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v6, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 366
    .end local v1    # "r":Landroid/graphics/Rect;
    .end local v2    # "typedValue":Landroid/util/TypedValue;
    .end local v3    # "strokecolor":I
    .end local v4    # "strokeWidth":I
    .end local v5    # "isValid":Z
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_6
    const/16 v1, 0xff

    invoke-virtual {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragViewAlpha(I)V

    .line 368
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 369
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    .line 371
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    .line 372
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v1, :cond_8

    .line 373
    const-string v1, "SemDragAndDropListAnimator"

    const-string v2, "dndListener.OnDragAndDropStart() initDrag"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropStart()V

    .line 376
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 377
    return v0
.end method

.method private blacklist initDragIfNecessary(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 301
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    .line 302
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDrag(I)Z

    move-result v0

    return v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    .line 310
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist initListeners()V
    .locals 1

    .line 123
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    .line 151
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$2;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 159
    return-void
.end method

.method private blacklist isHeaderOrFooterViewPos(I)Z
    .locals 2
    .param p1, "pos"    # I

    .line 888
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 889
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTouchMove(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 431
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 432
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 434
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    .line 437
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    .line 438
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    .line 440
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 441
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    goto :goto_0

    .line 442
    :cond_1
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 443
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    .line 446
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 447
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstTouchY:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 448
    .local v1, "distance":I
    int-to-float v3, v1

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 449
    iput-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    .line 453
    .end local v1    # "distance":I
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    .line 455
    const/4 v3, 0x0

    .line 456
    .local v3, "needScroll":Z
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    .line 457
    .local v4, "top":I
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 458
    .local v5, "temp":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 459
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v1

    add-int/2addr v4, v6

    .line 461
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    .line 462
    .local v6, "bottom":I
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 463
    if-eqz v5, :cond_5

    .line 464
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v1

    sub-int/2addr v6, v7

    .line 466
    :cond_5
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    if-gt v7, v6, :cond_6

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    if-ge v7, v4, :cond_9

    .line 467
    :cond_6
    const/4 v3, 0x1

    .line 468
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    if-nez v7, :cond_7

    .line 471
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const-wide/16 v10, 0x96

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 473
    :cond_7
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    if-le v7, v6, :cond_8

    .line 474
    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    .line 476
    :cond_8
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    if-ge v1, v4, :cond_9

    .line 477
    iput v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    .line 481
    :cond_9
    if-nez v3, :cond_a

    .line 482
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    .line 485
    :cond_a
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    if-nez v1, :cond_b

    .line 486
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 489
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->reorderIfNeeded()V

    .line 490
    return-void
.end method

.method private blacklist onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    .line 516
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 518
    .local v0, "firstVisiblePosition":I
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    const-string v2, "SemDragAndDropListAnimator"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    .line 520
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "dndListener.onDragAndDropEnd() onTouchUpCancel DND_TOUCH_STATUS_START #2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 525
    :cond_0
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 526
    return-void

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    .line 531
    return-void

    .line 533
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 534
    .local v1, "dragView":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 535
    .local v5, "dropView":Landroid/view/View;
    const/4 v6, 0x0

    if-eqz v1, :cond_5

    if-nez v5, :cond_3

    goto :goto_0

    .line 582
    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v4, :cond_4

    .line 585
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    .line 586
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v3, :cond_9

    .line 587
    const-string v3, "dndListener.onDragAndDropEnd() mListItemSelectionAnimating is true #4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    goto/16 :goto_3

    .line 591
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v4, v7

    .line 592
    .local v4, "offsetY":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 594
    .local v7, "deltaY":I
    new-instance v8, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    .line 596
    .local v8, "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    invoke-virtual {v8, v6, v6, v4, v7}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 597
    const v9, 0x3f333333    # 0.7f

    invoke-virtual {v8, v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 599
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {v9, v10, v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 600
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 602
    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mRetainFirstDragViewPos:I

    .line 606
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 611
    iput-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDropDonePending:Z

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndTouchValuesAndBitmap()V

    .line 616
    const-string v3, "onTouchUp() start last animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 540
    .end local v4    # "offsetY":I
    .end local v7    # "deltaY":I
    .end local v8    # "t":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    :cond_5
    :goto_0
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v7, v8

    .line 541
    .local v7, "draggedBitmapTop":I
    if-eqz v5, :cond_6

    move v8, v3

    goto :goto_1

    :cond_6
    move v8, v6

    .line 542
    .local v8, "dropViewVisible":Z
    :goto_1
    if-eqz v8, :cond_7

    .line 543
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "distance":I
    goto :goto_2

    .line 547
    .end local v9    # "distance":I
    :cond_7
    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    if-ge v9, v0, :cond_8

    .line 548
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v7, v9

    iget-object v10, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    neg-int v9, v9

    .restart local v9    # "distance":I
    goto :goto_2

    .line 550
    .end local v9    # "distance":I
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v9, v7

    .line 553
    .restart local v9    # "distance":I
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dndListener.onTouchUp() dragView == null, distance="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-array v2, v4, [I

    aput v6, v2, v6

    aput v9, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 555
    .local v2, "va":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$3;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 562
    new-instance v3, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 579
    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 580
    sget-object v3, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 581
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 582
    .end local v2    # "va":Landroid/animation/ValueAnimator;
    .end local v7    # "draggedBitmapTop":I
    .end local v8    # "dropViewVisible":Z
    .end local v9    # "distance":I
    nop

    .line 619
    :cond_9
    :goto_3
    iput v6, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndAutoScrollMode:I

    .line 620
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 621
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    .line 622
    return-void
.end method

.method private blacklist recalculateOffset(II)V
    .locals 10
    .param p1, "prevPos"    # I
    .param p2, "newPos"    # I

    .line 729
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 730
    .local v0, "dividerHeight":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 731
    .local v1, "firstVisiblePosition":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v0

    .line 732
    .local v2, "childHeight":I
    const-string v3, ", i = "

    const/4 v4, -0x1

    const-string v5, "SemDragAndDropListAnimator"

    if-le p2, p1, :cond_6

    .line 733
    add-int/lit8 v6, p1, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, p2, :cond_5

    .line 734
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    if-le v6, v7, :cond_3

    .line 735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recalculateOffset : canDrop #2 mFirstDragPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-interface {v7, v8, v6}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 737
    move v7, v2

    .line 738
    .local v7, "totalHeight":I
    move v8, v6

    .line 739
    .local v8, "currentIdx":I
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/2addr v8, v4

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_0

    .line 740
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_1

    .line 742
    :cond_0
    invoke-direct {p0, v6}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->updateRoundCorner(I)V

    .line 743
    neg-int v9, v7

    invoke-direct {p0, v6, v9}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addNewTranslation(II)V

    .line 744
    .end local v7    # "totalHeight":I
    .end local v8    # "currentIdx":I
    goto :goto_2

    .line 745
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v8, v6, v1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 746
    .local v7, "fixedView":Landroid/view/View;
    if-nez v7, :cond_2

    .line 749
    goto :goto_2

    .line 751
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 752
    .end local v7    # "fixedView":Landroid/view/View;
    goto :goto_2

    .line 754
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v8, v6, v1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 755
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_4

    .line 756
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "recalculateOffset(\'dragging down\') no such item, i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    goto :goto_2

    .line 759
    :cond_4
    invoke-static {v7}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v8

    .line 760
    .local v8, "centerY":I
    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findMovedItemPosition(I)I

    move-result v9

    .line 761
    .local v9, "movedPos":I
    invoke-direct {p0, v9}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->updateRoundCorner(I)V

    .line 762
    invoke-direct {p0, v9}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addReturningTranslation(I)V

    .line 733
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "centerY":I
    .end local v9    # "movedPos":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .end local v6    # "i":I
    :cond_5
    goto/16 :goto_7

    .line 766
    :cond_6
    add-int/lit8 v6, p1, -0x1

    .restart local v6    # "i":I
    :goto_3
    if-lt v6, p2, :cond_d

    .line 767
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    if-ge v6, v7, :cond_b

    .line 768
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recalculateOffset : canDrop #3 mFirstDragPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-interface {v7, v8, v6}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 770
    move v7, v2

    .line 771
    .local v7, "totalHeight":I
    move v8, v6

    .line 772
    .local v8, "currentIdx":I
    :goto_4
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_7

    .line 773
    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_4

    .line 775
    :cond_7
    invoke-direct {p0, v6}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->updateRoundCorner(I)V

    .line 776
    invoke-direct {p0, v6, v7}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addNewTranslation(II)V

    .end local v7    # "totalHeight":I
    .end local v8    # "currentIdx":I
    goto :goto_5

    .line 777
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v4, :cond_a

    .line 778
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v8, v6, v1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 779
    .local v7, "fixedView":Landroid/view/View;
    if-nez v7, :cond_9

    .line 782
    goto :goto_6

    .line 784
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    .end local v7    # "fixedView":Landroid/view/View;
    goto :goto_6

    .line 777
    :cond_a
    :goto_5
    goto :goto_6

    .line 787
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v8, v6, v1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 788
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_c

    .line 789
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "recalculateOffset(\'dragging up\') no such item, i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    goto :goto_6

    .line 792
    :cond_c
    invoke-static {v7}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v8

    .line 793
    .local v8, "centerY":I
    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findMovedItemPosition(I)I

    move-result v9

    .line 794
    .restart local v9    # "movedPos":I
    invoke-direct {p0, v9}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->updateRoundCorner(I)V

    .line 795
    invoke-direct {p0, v9}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->addReturningTranslation(I)V

    .line 766
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "centerY":I
    .end local v9    # "movedPos":I
    :goto_6
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_3

    .line 799
    .end local v6    # "i":I
    :cond_d
    :goto_7
    return-void
.end method

.method private blacklist startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 381
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 382
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 383
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    .line 385
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    .line 386
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 387
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    .line 388
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 389
    return-void
.end method

.method private blacklist updateRoundCorner(I)V
    .locals 4
    .param p1, "pos"    # I

    .line 715
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 716
    .local v0, "firstVisiblePosition":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 718
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {v1}, Landroid/view/View;->semGetRoundedCorners()I

    move-result v2

    .line 720
    .local v2, "childCorner":I
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRoundCorner:I

    if-eq v3, v2, :cond_0

    .line 721
    invoke-virtual {v1, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 722
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRoundCorner:I

    .line 723
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 726
    .end local v2    # "childCorner":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 896
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    .line 898
    .local v0, "draggedItemX":I
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v1, v2

    .line 900
    .local v1, "draggedItemY":I
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 904
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 907
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v3, 0x5

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 908
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 910
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 912
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 914
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 915
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 917
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3, v3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    goto :goto_2

    .line 901
    :cond_2
    :goto_1
    return-void

    .line 919
    .end local v0    # "draggedItemX":I
    .end local v1    # "draggedItemY":I
    :cond_3
    :goto_2
    return-void
.end method

.method public whitelist getDragAndDropOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 231
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 272
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    .line 273
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-le v3, v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->activatedByLongPress()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 276
    return v1

    .line 281
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    if-eqz v1, :cond_5

    .line 282
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    return v2

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 241
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    .line 242
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    .line 245
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstTouchY:I

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-le v3, v1, :cond_5

    .line 249
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v3

    .line 250
    .local v3, "itemPosition":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 251
    return v2

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->activatedByLongPress()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 255
    return v2

    .line 258
    :cond_3
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    .line 259
    invoke-direct {p0, v4, v5, v3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 261
    invoke-direct {p0, v3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDrag(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 262
    return v1

    .line 267
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    .line 288
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

    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchMode:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 399
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 413
    :pswitch_1
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    .line 414
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 415
    .local v4, "pointerId":I
    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    if-ne v4, v5, :cond_2

    .line 418
    if-nez v2, :cond_1

    move v1, v3

    .line 419
    .local v1, "newPointerIndex":I
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mActivePointerId:I

    .line 420
    .end local v1    # "newPointerIndex":I
    goto :goto_0

    .line 404
    .end local v2    # "pointerIndex":I
    .end local v4    # "pointerId":I
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    .line 405
    goto :goto_0

    .line 409
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    .line 410
    goto :goto_0

    .line 401
    :pswitch_4
    nop

    .line 426
    :cond_2
    :goto_0
    return v3

    .line 394
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
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 868
    const-string v0, "SemDragAndDropListAnimator"

    const-string/jumbo v1, "postDrawChild : call drawDragHandlerIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 870
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    .line 871
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 873
    :cond_0
    return-void
.end method

.method public blacklist preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 849
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 850
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, v0

    .line 852
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->isDraggable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDropDonePending:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    .line 853
    return v3

    .line 856
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v2

    .line 857
    .local v2, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mCanvasSaveCount:I

    .line 858
    if-eqz v2, :cond_1

    .line 859
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 860
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mCanvasSaveCount:I

    .line 861
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 863
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method blacklist reorderIfNeeded()V
    .locals 5

    .line 494
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    .line 496
    .local v0, "prevDestPosition":I
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchY:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 497
    .local v1, "adjustedY":I
    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->findDragItemPosition(I)I

    move-result v2

    .line 498
    .local v2, "dragPos":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reorderIfNeeded : canDrop #1 mFirstDragPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dragPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemDragAndDropListAnimator"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    .line 504
    :cond_0
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    if-eq v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    if-nez v3, :cond_1

    .line 505
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->recalculateOffset(II)V

    .line 506
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    .line 509
    :cond_1
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 510
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 512
    :cond_3
    return-void
.end method

.method blacklist resetDndPositionValues()V
    .locals 2

    .line 632
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    .line 633
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnableHoverDrawable(Z)V

    .line 634
    return-void
.end method

.method blacklist resetDndTouchValuesAndBitmap()V
    .locals 1

    .line 626
    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    .line 627
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 628
    return-void
.end method

.method public whitelist setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 1
    .param p1, "dndController"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 169
    if-nez p1, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 171
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    goto :goto_0

    .line 177
    :cond_1
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;-><init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 179
    :goto_0
    return-void
.end method

.method public blacklist startDrag()Z
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 224
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initDragIfNecessary(I)Z

    move-result v1

    return v1
.end method
