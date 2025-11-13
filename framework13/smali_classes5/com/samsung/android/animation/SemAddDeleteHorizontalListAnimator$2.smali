.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$childCountBefore:I

.field final synthetic blacklist val$defaultHeight:I

.field final synthetic blacklist val$defaultTop:I

.field final synthetic blacklist val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$deletedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$firstVisiblePosBefore:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;IIIILjava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .line 196
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultTop:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultHeight:I

    iput p5, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$firstVisiblePosBefore:I

    iput p6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$childCountBefore:I

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 35

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    .line 200
    .local v1, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v2

    .line 201
    .local v2, "childCountAfter":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    .line 202
    .local v3, "firstVisiblePosAfter":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v4

    .line 203
    .local v4, "lastVisiblePosAfter":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v5

    .line 204
    .local v5, "headerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v6

    .line 205
    .local v6, "footerViewsCount":I
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    .line 206
    .local v7, "adapterCount":I
    const/4 v8, 0x0

    .line 207
    .local v8, "translationX":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v10, 0x0

    .line 211
    .local v10, "singleItemWidth":I
    const/4 v11, 0x0

    .line 212
    .local v11, "top":I
    const/4 v12, 0x0

    .line 213
    .local v12, "height":I
    if-le v2, v5, :cond_0

    .line 214
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$mgetChildMaxWidth(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v13

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v14

    add-int v10, v13, v14

    .line 215
    invoke-virtual {v1, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v11

    .line 216
    invoke-virtual {v1, v5}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v12

    goto :goto_0

    .line 218
    :cond_0
    iget v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultTop:I

    .line 219
    iget v12, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultHeight:I

    .line 222
    :goto_0
    const/4 v13, 0x1

    .line 223
    .local v13, "newItemsComingFromLeft":Z
    iget v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$firstVisiblePosBefore:I

    sub-int/2addr v14, v3

    .line 224
    .local v14, "newItemsComingFromLeftCount":I
    move v15, v14

    .line 225
    .local v15, "newItemsFromLeftRemaining":I
    add-int/lit8 v16, v4, 0x1

    move/from16 v17, v4

    .end local v4    # "lastVisiblePosAfter":I
    .local v17, "lastVisiblePosAfter":I
    iget v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$childCountBefore:I

    sub-int/2addr v4, v2

    add-int v16, v16, v4

    .line 227
    .local v16, "newlyAppearingViewOldPositionFromRight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v18, 0x1

    if-ge v4, v2, :cond_8

    .line 228
    move/from16 v19, v8

    .end local v8    # "translationX":F
    .local v19, "translationX":F
    invoke-virtual {v1, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 229
    .local v8, "child":Landroid/view/View;
    move-object/from16 v20, v1

    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .local v20, "listview":Landroid/widget/SemHorizontalListView;
    add-int v1, v4, v3

    .line 230
    .local v1, "position":I
    move/from16 v21, v2

    .end local v2    # "childCountAfter":I
    .local v21, "childCountAfter":I
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 231
    .local v22, "itemId":J
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 232
    .local v2, "newX":F
    const/16 v24, 0x0

    .line 233
    .local v24, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    const-wide/16 v25, -0x1

    cmp-long v25, v22, v25

    if-nez v25, :cond_3

    .line 234
    if-ge v1, v5, :cond_1

    .line 235
    move/from16 v25, v5

    .end local v5    # "headerViewsCount":I
    .local v25, "headerViewsCount":I
    add-int/lit8 v5, v1, 0x1

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v11    # "top":I
    .end local v12    # "height":I
    .local v26, "top":I
    .local v27, "height":I
    int-to-long v11, v5

    move-wide/from16 v22, v11

    .end local v22    # "itemId":J
    .local v11, "itemId":J
    goto :goto_2

    .line 236
    .end local v25    # "headerViewsCount":I
    .end local v26    # "top":I
    .end local v27    # "height":I
    .restart local v5    # "headerViewsCount":I
    .local v11, "top":I
    .restart local v12    # "height":I
    .restart local v22    # "itemId":J
    :cond_1
    move/from16 v25, v5

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v5    # "headerViewsCount":I
    .end local v11    # "top":I
    .end local v12    # "height":I
    .restart local v25    # "headerViewsCount":I
    .restart local v26    # "top":I
    .restart local v27    # "height":I
    sub-int v5, v7, v6

    if-lt v1, v5, :cond_2

    .line 237
    add-int v5, v1, v6

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    .line 238
    .local v5, "footerId":I
    neg-int v11, v5

    int-to-long v11, v11

    move-wide/from16 v22, v11

    .line 240
    .end local v5    # "footerId":I
    :cond_2
    :goto_2
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .end local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    goto :goto_3

    .line 242
    .end local v25    # "headerViewsCount":I
    .end local v26    # "top":I
    .end local v27    # "height":I
    .local v5, "headerViewsCount":I
    .restart local v11    # "top":I
    .restart local v12    # "height":I
    .restart local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_3
    move/from16 v25, v5

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v5    # "headerViewsCount":I
    .end local v11    # "top":I
    .end local v12    # "height":I
    .restart local v25    # "headerViewsCount":I
    .restart local v26    # "top":I
    .restart local v27    # "height":I
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 245
    .end local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :goto_3
    if-eqz v5, :cond_5

    .line 246
    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 247
    const/4 v13, 0x0

    .line 250
    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v11, v11

    cmpl-float v11, v11, v2

    if-nez v11, :cond_4

    .line 251
    move/from16 v8, v19

    goto :goto_7

    .line 253
    :cond_4
    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v11, v11

    sub-float/2addr v11, v2

    move/from16 v24, v1

    .end local v19    # "translationX":F
    .local v11, "translationX":F
    goto :goto_6

    .line 258
    .end local v11    # "translationX":F
    .restart local v19    # "translationX":F
    :cond_5
    if-lez v15, :cond_6

    if-eqz v13, :cond_6

    .line 259
    neg-int v11, v14

    .line 260
    .local v11, "rowShift":I
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 262
    .end local v11    # "rowShift":I
    :cond_6
    sub-int v11, v16, v1

    .line 263
    .restart local v11    # "rowShift":I
    add-int/lit8 v16, v16, 0x1

    .line 266
    :goto_4
    const/4 v12, -0x1

    .line 267
    .local v12, "oldX":I
    move/from16 v24, v1

    .end local v1    # "position":I
    .local v24, "position":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 268
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    mul-int v18, v11, v10

    sub-int v1, v1, v18

    .end local v12    # "oldX":I
    .local v1, "oldX":I
    goto :goto_5

    .line 270
    .end local v1    # "oldX":I
    .restart local v12    # "oldX":I
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    mul-int v18, v11, v10

    add-int v1, v1, v18

    .line 272
    .end local v12    # "oldX":I
    .restart local v1    # "oldX":I
    :goto_5
    int-to-float v12, v1

    sub-float/2addr v12, v2

    move v11, v12

    .line 274
    .end local v1    # "oldX":I
    .end local v19    # "translationX":F
    .local v11, "translationX":F
    :goto_6
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v1, v8, v11, v12}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 275
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v11

    .line 227
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "newX":F
    .end local v5    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v11    # "translationX":F
    .end local v22    # "itemId":J
    .end local v24    # "position":I
    .local v8, "translationX":F
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v5, v25

    move/from16 v11, v26

    move/from16 v12, v27

    goto/16 :goto_1

    .end local v20    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v21    # "childCountAfter":I
    .end local v25    # "headerViewsCount":I
    .end local v26    # "top":I
    .end local v27    # "height":I
    .local v1, "listview":Landroid/widget/SemHorizontalListView;
    .local v2, "childCountAfter":I
    .local v5, "headerViewsCount":I
    .local v11, "top":I
    .local v12, "height":I
    :cond_8
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v25, v5

    move/from16 v19, v8

    move/from16 v26, v11

    move/from16 v27, v12

    .line 280
    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v2    # "childCountAfter":I
    .end local v4    # "i":I
    .end local v5    # "headerViewsCount":I
    .end local v8    # "translationX":F
    .end local v11    # "top":I
    .end local v12    # "height":I
    .restart local v19    # "translationX":F
    .restart local v20    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v21    # "childCountAfter":I
    .restart local v25    # "headerViewsCount":I
    .restart local v26    # "top":I
    .restart local v27    # "height":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 281
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/4 v2, 0x0

    .line 283
    .end local v19    # "translationX":F
    .local v2, "updateListenerAdded":Z
    .restart local v8    # "translationX":F
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 285
    .local v4, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 287
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v11, v11, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move-object/from16 v19, v1

    .end local v1    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v19, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    iget v1, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move-object/from16 v22, v4

    .end local v4    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .local v22, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    add-int v4, v26, v27

    move/from16 v23, v6

    move/from16 v6, v26

    .end local v26    # "top":I
    .local v6, "top":I
    .local v23, "footerViewsCount":I
    invoke-direct {v11, v12, v6, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v11

    .line 289
    .local v1, "startValue":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v11, v12}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v4

    .line 294
    .local v4, "newPosition":I
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 297
    .local v11, "isDeletedItem":Z
    sub-int v12, v4, v3

    .line 301
    .local v12, "destinationViewIndex":I
    move/from16 v24, v3

    .end local v3    # "firstVisiblePosAfter":I
    .local v24, "firstVisiblePosAfter":I
    if-ltz v12, :cond_a

    move/from16 v3, v21

    .end local v21    # "childCountAfter":I
    .local v3, "childCountAfter":I
    if-lt v12, v3, :cond_9

    move/from16 v21, v4

    move/from16 v28, v6

    move-object/from16 v4, v20

    move/from16 v20, v7

    goto :goto_9

    .line 319
    :cond_9
    move/from16 v21, v4

    move-object/from16 v4, v20

    .end local v20    # "listview":Landroid/widget/SemHorizontalListView;
    .local v4, "listview":Landroid/widget/SemHorizontalListView;
    .local v21, "newPosition":I
    invoke-virtual {v4, v12}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move/from16 v28, v6

    .end local v6    # "top":I
    .local v28, "top":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    .line 320
    .local v6, "referenceX":F
    move/from16 v20, v7

    .end local v7    # "adapterCount":I
    .local v20, "adapterCount":I
    iget v7, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    move/from16 v29, v3

    move v8, v7

    .end local v8    # "translationX":F
    .local v7, "translationX":F
    goto :goto_c

    .line 301
    .end local v3    # "childCountAfter":I
    .end local v28    # "top":I
    .local v4, "newPosition":I
    .local v6, "top":I
    .local v7, "adapterCount":I
    .restart local v8    # "translationX":F
    .local v20, "listview":Landroid/widget/SemHorizontalListView;
    .local v21, "childCountAfter":I
    :cond_a
    move/from16 v28, v6

    move/from16 v3, v21

    move/from16 v21, v4

    move-object/from16 v4, v20

    move/from16 v20, v7

    .line 303
    .end local v6    # "top":I
    .end local v7    # "adapterCount":I
    .restart local v3    # "childCountAfter":I
    .local v4, "listview":Landroid/widget/SemHorizontalListView;
    .local v20, "adapterCount":I
    .local v21, "newPosition":I
    .restart local v28    # "top":I
    :goto_9
    if-nez v3, :cond_c

    .line 304
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v6}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 305
    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v6

    iget v7, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v29, v3

    .end local v3    # "childCountAfter":I
    .local v29, "childCountAfter":I
    iget v3, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    sub-int/2addr v7, v3

    sub-int/2addr v6, v7

    int-to-float v3, v6

    .local v3, "firstChildLeft":F
    goto :goto_a

    .line 307
    .end local v29    # "childCountAfter":I
    .local v3, "childCountAfter":I
    :cond_b
    move/from16 v29, v3

    .end local v3    # "childCountAfter":I
    .restart local v29    # "childCountAfter":I
    invoke-virtual {v4}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    .local v3, "firstChildLeft":F
    goto :goto_a

    .line 310
    .end local v29    # "childCountAfter":I
    .local v3, "childCountAfter":I
    :cond_c
    move/from16 v29, v3

    .end local v3    # "childCountAfter":I
    .restart local v29    # "childCountAfter":I
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    .line 312
    .local v3, "firstChildLeft":F
    :goto_a
    iget v6, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    sub-float v6, v3, v6

    .line 313
    .end local v8    # "translationX":F
    .local v6, "translationX":F
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v7}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 314
    neg-int v7, v12

    mul-int/2addr v7, v10

    int-to-float v7, v7

    add-float/2addr v6, v7

    goto :goto_b

    .line 316
    :cond_d
    neg-int v7, v12

    mul-int/2addr v7, v10

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 318
    .end local v3    # "firstChildLeft":F
    :goto_b
    move v8, v6

    .line 323
    .end local v6    # "translationX":F
    .restart local v8    # "translationX":F
    :goto_c
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 324
    .local v3, "endValue":Landroid/graphics/Rect;
    float-to-int v6, v8

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 326
    if-eqz v11, :cond_e

    .line 328
    sget v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    const/high16 v30, 0x40000000    # 2.0f

    div-float v6, v6, v30

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 329
    .local v6, "horizOffset":I
    sget v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v7, v31, v7

    div-float v7, v7, v30

    move-object/from16 v30, v4

    .end local v4    # "listview":Landroid/widget/SemHorizontalListView;
    .local v30, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v7, v4

    float-to-int v4, v7

    .line 330
    .local v4, "vertOffset":I
    new-instance v7, Landroid/graphics/Rect;

    move/from16 v31, v8

    .end local v8    # "translationX":F
    .local v31, "translationX":F
    iget v8, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    move/from16 v32, v10

    .end local v10    # "singleItemWidth":I
    .local v32, "singleItemWidth":I
    iget v10, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v4

    move/from16 v33, v11

    .end local v11    # "isDeletedItem":Z
    .local v33, "isDeletedItem":Z
    iget v11, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    move/from16 v34, v6

    .end local v6    # "horizOffset":I
    .local v34, "horizOffset":I
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    invoke-direct {v7, v8, v10, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v7

    goto :goto_d

    .line 326
    .end local v30    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v31    # "translationX":F
    .end local v32    # "singleItemWidth":I
    .end local v33    # "isDeletedItem":Z
    .end local v34    # "horizOffset":I
    .local v4, "listview":Landroid/widget/SemHorizontalListView;
    .restart local v8    # "translationX":F
    .restart local v10    # "singleItemWidth":I
    .restart local v11    # "isDeletedItem":Z
    :cond_e
    move-object/from16 v30, v4

    move/from16 v31, v8

    move/from16 v32, v10

    move/from16 v33, v11

    .line 334
    .end local v4    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v8    # "translationX":F
    .end local v10    # "singleItemWidth":I
    .end local v11    # "isDeletedItem":Z
    .restart local v30    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v31    # "translationX":F
    .restart local v32    # "singleItemWidth":I
    .restart local v33    # "isDeletedItem":Z
    :goto_d
    sget-object v4, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v3, v7, v18

    const-string v8, "bounds"

    invoke-static {v8, v4, v7}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 336
    .local v4, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    new-array v7, v6, [I

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 337
    .local v7, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v8, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v4, v6, v10

    aput-object v7, v6, v18

    invoke-static {v8, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 339
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    if-nez v2, :cond_f

    .line 340
    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v8, v8, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    const/4 v2, 0x1

    .line 343
    :cond_f
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v1    # "startValue":Landroid/graphics/Rect;
    .end local v3    # "endValue":Landroid/graphics/Rect;
    .end local v4    # "pvhBounds":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    .end local v7    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "destinationViewIndex":I
    .end local v21    # "newPosition":I
    .end local v22    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v33    # "isDeletedItem":Z
    move-object/from16 v1, v19

    move/from16 v7, v20

    move/from16 v6, v23

    move/from16 v3, v24

    move/from16 v26, v28

    move/from16 v21, v29

    move-object/from16 v20, v30

    move/from16 v8, v31

    move/from16 v10, v32

    goto/16 :goto_8

    .line 346
    .end local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v23    # "footerViewsCount":I
    .end local v24    # "firstVisiblePosAfter":I
    .end local v28    # "top":I
    .end local v29    # "childCountAfter":I
    .end local v30    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v31    # "translationX":F
    .end local v32    # "singleItemWidth":I
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v3, "firstVisiblePosAfter":I
    .local v6, "footerViewsCount":I
    .local v7, "adapterCount":I
    .restart local v8    # "translationX":F
    .restart local v10    # "singleItemWidth":I
    .local v20, "listview":Landroid/widget/SemHorizontalListView;
    .local v21, "childCountAfter":I
    .restart local v26    # "top":I
    :cond_10
    move-object/from16 v19, v1

    move/from16 v24, v3

    .end local v1    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v3    # "firstVisiblePosAfter":I
    .restart local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v24    # "firstVisiblePosAfter":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 347
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 349
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 350
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 351
    new-instance v3, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    sget-object v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 380
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mTranslationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 381
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 382
    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
