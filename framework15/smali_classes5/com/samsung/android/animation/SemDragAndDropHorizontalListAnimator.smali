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

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScrollBarSize:I

    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalListView;->setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initListeners()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private blacklist addNewTranslation(II)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v3

    float-to-int v2, v3

    :cond_1
    sub-int v3, p2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v3, v4, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    return-void
.end method

.method private blacklist addReturningTranslation(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v2

    float-to-int v2, v2

    neg-int v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    return-void
.end method

.method private blacklist checkDndGrabHandle(III)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private blacklist checkStartDnd(III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkDndGrabHandle(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v0, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakNotDraggableForAccessibility(I)V

    :cond_1
    return v0
.end method

.method private blacklist drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    sget-object v1, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->PRESSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private blacklist drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {v3, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method private blacklist findDragItemPosition(I)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v2, v1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist findMovedItemPosition(I)I
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    add-int v6, v2, v1

    invoke-virtual {v5, v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v5

    instance-of v6, v5, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    sub-int v7, p1, v4

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int v6, v2, v1

    return v6

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v0, v1, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private blacklist initDrag(I)Z
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    const-string v1, "SemDragAndDropHListAnimator"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "initDrag : #4 return false, mDragView is null."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalListView;->setEnableHoverDrawable(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakDragStartForAccessibility(I)V

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mUserSetDragItemBitmap:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/16 v4, 0x72de

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

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010434

    invoke-virtual {v6, v7, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v4, v3, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11200f0

    invoke-virtual {v7, v8, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_3

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, v2

    :goto_0
    if-nez v7, :cond_4

    const v4, 0x3e91ff

    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-static {v7}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

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

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->setDragViewAlpha(I)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v2, :cond_7

    const-string v2, "dndListener.OnDragAndDropStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropStart()V

    goto :goto_2

    :cond_7
    const-string v2, "dndListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return v0
.end method

.method private blacklist initDragIfNecessary(I)Z
    .locals 2

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

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDrag(I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist initListeners()V
    .locals 1

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method private blacklist isHeaderOrFooterViewPos(I)Z
    .locals 2

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

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTouchMove(Landroid/view/MotionEvent;)V
    .locals 12

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

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

    :cond_1
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstTouchX:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v3, v1

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v5, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v1

    add-int/2addr v4, v6

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

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v1

    sub-int/2addr v6, v7

    :cond_5
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-gt v7, v6, :cond_6

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-ge v7, v4, :cond_9

    :cond_6
    const/4 v3, 0x1

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const-wide/16 v10, 0x96

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/SemHorizontalListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-le v7, v6, :cond_8

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    :cond_8
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-ge v1, v4, :cond_9

    iput v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    :cond_9
    if-nez v3, :cond_a

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    :cond_a
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->reorderIfNeeded()V

    return-void
.end method

.method private blacklist onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    const-string v2, "SemDragAndDropHListAnimator"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v1, :cond_0

    const-string v1, "dndListener.onDragAndDropEnd() DND_TOUCH_STATUS_START"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_0
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v3, :cond_8

    const-string v3, "dndListener.onDragAndDropEnd() mListItemSelectionAnimating is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    new-instance v8, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    invoke-virtual {v8, v6, v7, v5, v5}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    const v9, 0x3f333333    # 0.7f

    invoke-virtual {v8, v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v10, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-virtual {v9, v10, v8}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v9}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    iget v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mRetainFirstDragViewPos:I

    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v9, v5}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDropDonePending:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndTouchValuesAndBitmap()V

    const-string/jumbo v3, "onTouchUp() start last animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    :goto_0
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v6, v7

    if-eqz v4, :cond_5

    move v7, v3

    goto :goto_1

    :cond_5
    move v7, v5

    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v6

    goto :goto_2

    :cond_6
    iget v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-ge v8, v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v6, v3

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v3, v8

    neg-int v3, v3

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_9

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v9, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v6

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dndListener.onTouchUp() dragView == null, distance = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v5, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v8, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;

    invoke-direct {v8, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v8, 0xd2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v8, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    nop

    :cond_8
    :goto_3
    iput v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v2, v3}, Landroid/widget/SemHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mListView.getChildCount() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist recalculateOffset(II)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    const-string v3, "SemDragAndDropHListAnimator"

    const/4 v4, -0x1

    if-le p2, p1, :cond_7

    add-int/lit8 v5, p1, 0x1

    :goto_0
    if-gt v5, p2, :cond_6

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    if-le v5, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v6, v7, v5}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    move v7, v5

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/2addr v7, v4

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_2

    :cond_1
    neg-int v8, v6

    invoke-direct {p0, v5, v8}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    :goto_2
    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_5

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

    goto :goto_3

    :cond_5
    invoke-static {v6}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findMovedItemPosition(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addReturningTranslation(I)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    goto/16 :goto_8

    :cond_7
    add-int/lit8 v5, p1, -0x1

    :goto_4
    if-lt v5, p2, :cond_f

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    if-ge v5, v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v6, v7, v5}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v2

    move v7, v5

    :goto_5
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_5

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_9

    neg-int v8, v6

    invoke-direct {p0, v5, v8}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_6

    :cond_9
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_6

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-ne v6, v4, :cond_c

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_7

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_7

    :cond_c
    :goto_6
    goto :goto_7

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_e

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

    goto :goto_7

    :cond_e
    invoke-static {v6}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findMovedItemPosition(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addReturningTranslation(I)V

    :goto_7
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_4

    :cond_f
    :goto_8
    return-void
.end method

.method private blacklist startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    new-instance v1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist getDragAndDropOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-ne v3, v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v3

    if-le v3, v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstTouchX:I

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v3

    if-le v3, v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/SemHorizontalListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "SemDragAndDropHListAnimator"

    if-ne v3, v4, :cond_2

    const-string/jumbo v1, "onInterceptTouchEvent : #1 return false, itemPosition invalid."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v1, "onInterceptTouchEvent : #2 return false, activated By longPress."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    invoke-direct {p0, v4, v6, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDrag(I)Z

    move-result v4

    if-eqz v4, :cond_5

    return v1

    :cond_4
    const-string/jumbo v1, "onInterceptTouchEvent : #3 resetDndState"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    :cond_5
    nop

    :cond_6
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

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    if-ne v4, v5, :cond_2

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    nop

    :cond_2
    :goto_0
    return v3

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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public blacklist preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, v0

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

    return v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v2, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v2

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method blacklist reorderIfNeeded()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findDragItemPosition(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    :cond_0
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-eq v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->recalculateOffset(II)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    :cond_1
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->invalidate()V

    :cond_3
    return-void
.end method

.method blacklist resetDndPositionValues()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnableHoverDrawable(Z)V

    return-void
.end method

.method blacklist resetDndTouchValuesAndBitmap()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public blacklist setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    :goto_0
    return-void
.end method

.method public blacklist startDrag()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

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

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDragIfNecessary(I)Z

    move-result v1

    return v1
.end method
