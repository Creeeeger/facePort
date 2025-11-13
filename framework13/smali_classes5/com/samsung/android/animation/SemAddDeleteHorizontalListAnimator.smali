.class public Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;
.super Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.source "SemAddDeleteHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mDeletePending:Z

.field private blacklist mHorizontalListView:Landroid/widget/SemHorizontalListView;

.field private blacklist mInsertPending:Z

.field blacklist mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private blacklist mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetChildMaxWidth(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getChildMaxWidth()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 76
    const-string v0, "SemAddDeleteHListAnimator"

    sput-object v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/SemHorizontalListView;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;-><init>()V

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    .line 93
    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    .line 94
    invoke-virtual {p2, p0}, Landroid/widget/SemHorizontalListView;->setAddDeleteListAnimator(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

    .line 95
    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHostView:Landroid/view/View;

    .line 96
    return-void
.end method

.method private blacklist capturePreAnimationViewCoordinates()V
    .locals 28

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    .line 388
    .local v1, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 389
    .local v2, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    .line 390
    .local v3, "childCountBefore":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v4

    .line 391
    .local v4, "firstVisiblePosBefore":I
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 392
    .local v5, "adapterCount":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v6

    .line 393
    .local v6, "headerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v7

    .line 394
    .local v7, "footerViewsCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_5

    .line 395
    invoke-virtual {v1, v8}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 396
    .local v9, "child":Landroid/view/View;
    add-int v15, v8, v4

    .line 397
    .local v15, "position":I
    invoke-interface {v2, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 398
    .local v10, "itemId":J
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v27, v15

    goto/16 :goto_2

    .line 402
    :cond_0
    invoke-static {v9}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v23

    .line 404
    .local v23, "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_3

    .line 405
    if-ge v15, v6, :cond_1

    .line 406
    add-int/lit8 v12, v15, 0x1

    int-to-long v10, v12

    move-wide/from16 v17, v10

    goto :goto_1

    .line 407
    :cond_1
    sub-int v12, v5, v7

    if-lt v15, v12, :cond_2

    .line 408
    add-int v12, v15, v7

    sub-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    .line 409
    .local v12, "footerId":I
    neg-int v13, v12

    int-to-long v10, v13

    move-wide/from16 v17, v10

    goto :goto_1

    .line 407
    .end local v12    # "footerId":I
    :cond_2
    move-wide/from16 v17, v10

    .line 411
    .end local v10    # "itemId":J
    .local v17, "itemId":J
    :goto_1
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v16

    const/16 v19, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v20

    const/16 v21, 0x0

    move-object v10, v12

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move v12, v15

    move-object/from16 v25, v1

    move-object v1, v13

    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .local v25, "listview":Landroid/widget/SemHorizontalListView;
    move/from16 v13, v16

    move-object/from16 v26, v2

    move-object v2, v14

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .local v26, "adapter":Landroid/widget/ListAdapter;
    move/from16 v14, v19

    move/from16 v27, v15

    .end local v15    # "position":I
    .local v27, "position":I
    move/from16 v15, v20

    move/from16 v16, v21

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v10, v24

    invoke-virtual {v2, v1, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 413
    .end local v17    # "itemId":J
    .end local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v26    # "adapter":Landroid/widget/ListAdapter;
    .end local v27    # "position":I
    .restart local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v10    # "itemId":J
    .restart local v15    # "position":I
    :cond_3
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v27, v15

    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v15    # "position":I
    .restart local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v26    # "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "position":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    add-int v18, v8, v4

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v23

    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v1, v2, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 398
    .end local v23    # "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    .end local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v26    # "adapter":Landroid/widget/ListAdapter;
    .end local v27    # "position":I
    .restart local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v15    # "position":I
    :cond_4
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v27, v15

    .line 399
    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v15    # "position":I
    .restart local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v26    # "adapter":Landroid/widget/ListAdapter;
    .restart local v27    # "position":I
    :goto_2
    sget-object v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setDelete() child\'s one of dimensions is 0, i = "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    nop

    .line 394
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "itemId":J
    .end local v27    # "position":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    goto/16 :goto_0

    .line 416
    .end local v8    # "i":I
    .end local v25    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v26    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    return-void
.end method

.method private blacklist ensureAdapterAndListener()V
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 780
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_2

    .line 784
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    if-eqz v1, :cond_0

    .line 791
    return-void

    .line 789
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TwAddDeleteListAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 781
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getChildMaxWidth()I
    .locals 7

    .line 421
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    .line 422
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 423
    .local v1, "adapterCount":I
    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    .line 424
    .local v2, "firstVisiblePos":I
    const/4 v3, 0x0

    .line 425
    .local v3, "childWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 426
    add-int v5, v4, v2

    .line 427
    .local v5, "pos":I
    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    .line 428
    invoke-virtual {v6}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v6

    sub-int v6, v1, v6

    if-lt v5, v6, :cond_0

    .line 429
    goto :goto_1

    .line 431
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v6, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 432
    .local v6, "width":I
    if-le v6, v3, :cond_1

    .line 433
    move v3, v6

    .line 425
    .end local v5    # "pos":I
    .end local v6    # "width":I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    .end local v4    # "i":I
    :cond_2
    return v3
.end method

.method private blacklist prepareDelete(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v9, p0

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v10, p1

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    .line 178
    .local v11, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->ensureAdapterAndListener()V

    .line 179
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 180
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 182
    .local v8, "deletedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v12

    .line 183
    .local v12, "childCountBefore":I
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v13

    .line 184
    .local v13, "firstVisiblePosBefore":I
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    .line 186
    .local v14, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 188
    .local v0, "defaultHeight":I
    iget-object v1, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    move v15, v0

    move/from16 v16, v1

    .local v1, "defaultTop":I
    goto :goto_0

    .line 190
    .end local v0    # "defaultHeight":I
    .end local v1    # "defaultTop":I
    :cond_0
    iget-object v0, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v0

    .line 191
    .restart local v0    # "defaultHeight":I
    const/4 v1, 0x0

    move v15, v0

    move/from16 v16, v1

    .line 194
    .end local v0    # "defaultHeight":I
    .local v15, "defaultHeight":I
    .local v16, "defaultTop":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->capturePreAnimationViewCoordinates()V

    .line 196
    new-instance v7, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, v16

    move v4, v15

    move v5, v13

    move v6, v12

    move-object v10, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;IIIILjava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v10, v9, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    .line 384
    return-void
.end method

.method private blacklist prepareInsert(Ljava/util/ArrayList;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 508
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v6, p0

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->ensureAdapterAndListener()V

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v7, p1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v1

    .line 512
    .local v8, "insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 513
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 514
    .local v5, "insertedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v9, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    .line 516
    .local v9, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    .line 517
    .local v10, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v11

    .line 518
    .local v11, "childCount":I
    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    .line 519
    .local v12, "adapterCount":I
    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v13

    .line 520
    .local v13, "firstVisiblePos":I
    invoke-virtual {v9}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v14

    .line 521
    .local v14, "footerViewsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_4

    .line 522
    add-int v2, v1, v13

    .line 523
    .local v2, "position":I
    invoke-virtual {v9, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 524
    .local v3, "child":Landroid/view/View;
    invoke-interface {v10, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 525
    .local v22, "itemId":J
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_0

    move/from16 v24, v11

    move/from16 v25, v12

    goto/16 :goto_1

    .line 529
    :cond_0
    invoke-static {v3}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 531
    .local v4, "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v15, -0x1

    cmp-long v15, v22, v15

    if-nez v15, :cond_2

    .line 536
    sub-int v15, v12, v14

    if-lt v2, v15, :cond_1

    .line 537
    add-int v15, v2, v14

    sub-int/2addr v15, v12

    add-int/2addr v15, v0

    .line 538
    .local v15, "footerId":I
    iget-object v0, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move/from16 v24, v11

    move/from16 v25, v12

    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .local v24, "childCount":I
    .local v25, "adapterCount":I
    int-to-long v11, v15

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v26, v15

    .end local v15    # "footerId":I
    .local v26, "footerId":I
    move-object v15, v12

    move-object/from16 v16, v4

    move/from16 v17, v2

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v0, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .end local v26    # "footerId":I
    goto :goto_2

    .line 536
    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .restart local v11    # "childCount":I
    .restart local v12    # "adapterCount":I
    :cond_1
    move/from16 v24, v11

    move/from16 v25, v12

    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    goto :goto_2

    .line 541
    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .restart local v11    # "childCount":I
    .restart local v12    # "adapterCount":I
    :cond_2
    move/from16 v24, v11

    move/from16 v25, v12

    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    iget-object v0, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v20

    const/16 v21, 0x0

    move-object v15, v12

    move-object/from16 v16, v4

    move/from16 v17, v2

    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v0, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 525
    .end local v4    # "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .restart local v11    # "childCount":I
    .restart local v12    # "adapterCount":I
    :cond_3
    move/from16 v24, v11

    move/from16 v25, v12

    .line 526
    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    :goto_1
    sget-object v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setInsert() child\'s one of dimensions is 0, i = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    nop

    .line 521
    .end local v2    # "position":I
    .end local v3    # "child":Landroid/view/View;
    .end local v22    # "itemId":J
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v24

    move/from16 v12, v25

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .restart local v11    # "childCount":I
    .restart local v12    # "adapterCount":I
    :cond_4
    move/from16 v24, v11

    move/from16 v25, v12

    .line 545
    .end local v1    # "i":I
    .end local v11    # "childCount":I
    .end local v12    # "adapterCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 546
    .local v11, "upcomingViewsStartCoords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 547
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 548
    .local v1, "insertedItemPos":I
    sub-int v2, v1, v0

    .line 549
    .local v2, "itemAtStartPos":I
    sub-int v3, v2, v13

    invoke-virtual {v9, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 551
    .local v3, "refView":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .end local v1    # "insertedItemPos":I
    .end local v2    # "itemAtStartPos":I
    .end local v3    # "refView":Landroid/view/View;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 556
    .end local v0    # "j":I
    :cond_6
    new-instance v12, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v12, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    .line 776
    return-void
.end method


# virtual methods
.method public whitelist deleteFromAdapterCompleted()V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeletePending:Z

    .line 162
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 173
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    throw v0
.end method

.method public bridge synthetic blacklist draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist insertIntoAdapterCompleted()V
    .locals 2

    .line 489
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mInsertPending:Z

    .line 493
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mHorizontalListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$3;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 505
    return-void

    .line 490
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

    .line 118
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onDelete()V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->deleteFromAdapterCompleted()V

    .line 127
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

    .line 142
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onDelete()V

    .line 149
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

    .line 449
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    return-void

    .line 453
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAdd()V

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->insertIntoAdapterCompleted()V

    .line 458
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

    .line 473
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 474
    return-void

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 479
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAdd()V

    .line 480
    return-void
.end method

.method public whitelist setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;)V
    .locals 0
    .param p1, "onAddDeleteListener"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOnAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    .line 106
    return-void
.end method

.method public bridge synthetic whitelist setTransitionDuration(I)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->setTransitionDuration(I)V

    return-void
.end method
