.class public Lcom/samsung/android/animation/SemAddDeleteGridAnimator;
.super Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.source "SemAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemAddDeleteGridAnimator"


# instance fields
.field private blacklist mDeletePending:Z

.field private blacklist mGridView:Landroid/widget/GridView;

.field private blacklist mInsertPending:Z

.field blacklist mOldViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextAppearingViewPosition(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Ljava/util/HashSet;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getNextAppearingViewPosition(Ljava/util/HashSet;I)I

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/widget/GridView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridview"    # Landroid/widget/GridView;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    .line 91
    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    .line 92
    invoke-virtual {p2, p0}, Landroid/widget/GridView;->setAddDeleteGridAnimator(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

    .line 93
    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mHostView:Landroid/view/View;

    .line 94
    return-void
.end method

.method private blacklist ensureAdapterAndListener()V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 626
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_2

    .line 630
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    if-eqz v1, :cond_0

    .line 637
    return-void

    .line 635
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 631
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SemAddDeleteGridAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getNextAppearingViewPosition(Ljava/util/HashSet;I)I
    .locals 2
    .param p2, "lastNewlyAppearingViewPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 375
    .local p1, "deletedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v0, p2, 0x1

    .line 376
    .local v0, "index":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return v0
.end method

.method private blacklist prepareDelete(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v9, p0

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->ensureAdapterAndListener()V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    .line 178
    .local v11, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 179
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 184
    .local v7, "deletedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v12, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    .line 185
    .local v12, "gridView":Landroid/widget/GridView;
    invoke-virtual {v12}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    .line 186
    .local v13, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v12}, Landroid/widget/GridView;->getChildCount()I

    move-result v14

    .line 187
    .local v14, "childCountBefore":I
    invoke-virtual {v12}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v15

    .line 188
    .local v15, "firstVisiblePosBefore":I
    invoke-virtual {v12}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v16

    .line 189
    .local v16, "lastVisiblePosBefore":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v14, :cond_0

    .line 190
    invoke-virtual {v12, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "child":Landroid/view/View;
    add-int v2, v0, v15

    invoke-interface {v13, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 192
    .local v2, "itemId":J
    iget-object v4, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v18

    add-int v19, v0, v15

    .line 193
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v20

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v23}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    .line 192
    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "itemId":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 198
    .local v17, "singleRowHeightBefore":I
    new-instance v8, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v3, v17

    move v4, v15

    move/from16 v5, v16

    move-object v6, v13

    move-object v10, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/GridView;IIILandroid/widget/ListAdapter;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    iput-object v10, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    .line 372
    return-void
.end method

.method private blacklist prepareInsert(Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->ensureAdapterAndListener()V

    .line 453
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 454
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 456
    .local v5, "insertedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v8, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    .line 457
    .local v8, "gridView":Landroid/widget/GridView;
    invoke-virtual {v8}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    .line 458
    .local v9, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v8}, Landroid/widget/GridView;->getChildCount()I

    move-result v10

    .line 459
    .local v10, "childCount":I
    invoke-virtual {v8}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v11

    .line 460
    .local v11, "firstVisiblePos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 461
    invoke-virtual {v8, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 462
    .local v2, "child":Landroid/view/View;
    add-int v3, v1, v11

    invoke-interface {v9, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 463
    .local v3, "itemId":J
    iget-object v12, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v15, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v16

    add-int v17, v1, v11

    .line 464
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v18

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v20

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v21

    move-object v14, v15

    move-object v0, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    invoke-direct/range {v14 .. v20}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    .line 463
    invoke-virtual {v12, v13, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "itemId":J
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "i":I
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 468
    .local v12, "upcomingViewsStartCoords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[F>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 469
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 470
    .local v1, "insertedItemPos":I
    sub-int v2, v1, v0

    .line 471
    .local v2, "itemAtStartPos":I
    sub-int v3, v2, v11

    invoke-virtual {v8, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 473
    .local v3, "refView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 474
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    int-to-float v15, v15

    aput v15, v13, v14

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x1

    aput v14, v13, v15

    invoke-virtual {v12, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 473
    :cond_1
    const/4 v15, 0x1

    .line 468
    .end local v1    # "insertedItemPos":I
    .end local v2    # "itemAtStartPos":I
    .end local v3    # "refView":Landroid/view/View;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    .end local v0    # "j":I
    :cond_2
    new-instance v13, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v12

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v13, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    .line 622
    return-void
.end method


# virtual methods
.method public whitelist deleteFromAdapterCompleted()V
    .locals 2

    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mDeletePending:Z

    .line 160
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 171
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
.end method

.method public bridge synthetic blacklist draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist insertIntoAdapterCompleted()V
    .locals 2

    .line 432
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertPending:Z

    .line 436
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 447
    return-void

    .line 433
    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
.end method

.method public whitelist setDelete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->deleteFromAdapterCompleted()V

    .line 125
    return-void
.end method

.method public whitelist setDeletePending(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

    .line 147
    return-void
.end method

.method public whitelist setInsert(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    .line 400
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->insertIntoAdapterCompleted()V

    .line 401
    return-void
.end method

.method public whitelist setInsertPending(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 417
    return-void

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    .line 423
    return-void
.end method

.method public whitelist setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;)V
    .locals 0
    .param p1, "onAddDeleteListener"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    .line 104
    return-void
.end method

.method public bridge synthetic whitelist setTransitionDuration(I)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->setTransitionDuration(I)V

    return-void
.end method
