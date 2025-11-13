.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$childCountBefore:I

.field final synthetic blacklist val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$deletedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$firstVisiblePosBefore:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;IILjava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 205
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$firstVisiblePosBefore:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$childCountBefore:I

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 35

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    .line 209
    .local v1, "listview":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 210
    .local v2, "childCountAfter":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 211
    .local v3, "firstVisiblePosAfter":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 212
    .local v4, "lastVisiblePosAfter":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    .line 213
    .local v5, "headerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v6

    .line 214
    .local v6, "footerViewsCount":I
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    .line 215
    .local v7, "adapterCount":I
    const/4 v8, 0x0

    .line 216
    .local v8, "translationY":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v10, 0x0

    .line 220
    .local v10, "singleItemHeight":I
    const/4 v11, 0x0

    .line 221
    .local v11, "left":I
    const/4 v12, 0x0

    .line 222
    .local v12, "width":I
    if-le v2, v5, :cond_0

    .line 223
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$mgetChildMaxHeight(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v13

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v14

    add-int v10, v13, v14

    .line 224
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 225
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v12

    .line 230
    :goto_0
    const/4 v13, 0x1

    .line 231
    .local v13, "newItemsComingFromTop":Z
    iget v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$firstVisiblePosBefore:I

    sub-int/2addr v14, v3

    .line 232
    .local v14, "newItemsComingFromTopCount":I
    move v15, v14

    .line 233
    .local v15, "newItemsFromTopRemaining":I
    add-int/lit8 v16, v4, 0x1

    move/from16 v17, v4

    .end local v4    # "lastVisiblePosAfter":I
    .local v17, "lastVisiblePosAfter":I
    iget v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$childCountBefore:I

    sub-int/2addr v4, v2

    add-int v16, v16, v4

    .line 235
    .local v16, "newlyAppearingViewOldPositionFromBottom":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v18, 0x1

    if-ge v4, v2, :cond_7

    .line 236
    move/from16 v19, v8

    .end local v8    # "translationY":F
    .local v19, "translationY":F
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 237
    .local v8, "child":Landroid/view/View;
    move-object/from16 v20, v1

    .end local v1    # "listview":Landroid/widget/ListView;
    .local v20, "listview":Landroid/widget/ListView;
    add-int v1, v4, v3

    .line 238
    .local v1, "position":I
    move/from16 v21, v2

    .end local v2    # "childCountAfter":I
    .local v21, "childCountAfter":I
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 239
    .local v22, "itemId":J
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 240
    .local v2, "newY":F
    const/16 v24, 0x0

    .line 241
    .local v24, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    const-wide/16 v25, -0x1

    cmp-long v25, v22, v25

    if-nez v25, :cond_3

    .line 242
    if-ge v1, v5, :cond_1

    .line 243
    move/from16 v25, v5

    .end local v5    # "headerViewsCount":I
    .local v25, "headerViewsCount":I
    add-int/lit8 v5, v1, 0x1

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v11    # "left":I
    .end local v12    # "width":I
    .local v26, "left":I
    .local v27, "width":I
    int-to-long v11, v5

    move-wide/from16 v22, v11

    .end local v22    # "itemId":J
    .local v11, "itemId":J
    goto :goto_2

    .line 244
    .end local v25    # "headerViewsCount":I
    .end local v26    # "left":I
    .end local v27    # "width":I
    .restart local v5    # "headerViewsCount":I
    .local v11, "left":I
    .restart local v12    # "width":I
    .restart local v22    # "itemId":J
    :cond_1
    move/from16 v25, v5

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v5    # "headerViewsCount":I
    .end local v11    # "left":I
    .end local v12    # "width":I
    .restart local v25    # "headerViewsCount":I
    .restart local v26    # "left":I
    .restart local v27    # "width":I
    sub-int v5, v7, v6

    if-lt v1, v5, :cond_2

    .line 245
    add-int v5, v1, v6

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    .line 246
    .local v5, "footerId":I
    neg-int v11, v5

    int-to-long v11, v11

    move-wide/from16 v22, v11

    .line 248
    .end local v5    # "footerId":I
    :cond_2
    :goto_2
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .end local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    goto :goto_3

    .line 250
    .end local v25    # "headerViewsCount":I
    .end local v26    # "left":I
    .end local v27    # "width":I
    .local v5, "headerViewsCount":I
    .restart local v11    # "left":I
    .restart local v12    # "width":I
    .restart local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_3
    move/from16 v25, v5

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v5    # "headerViewsCount":I
    .end local v11    # "left":I
    .end local v12    # "width":I
    .restart local v25    # "headerViewsCount":I
    .restart local v26    # "left":I
    .restart local v27    # "width":I
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 253
    .end local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :goto_3
    if-eqz v5, :cond_5

    .line 254
    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 255
    const/4 v13, 0x0

    .line 258
    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v11, v11

    cmpl-float v11, v11, v2

    if-nez v11, :cond_4

    .line 259
    move/from16 v8, v19

    goto :goto_6

    .line 261
    :cond_4
    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v11, v11

    sub-float/2addr v11, v2

    move/from16 v24, v1

    .end local v19    # "translationY":F
    .local v11, "translationY":F
    goto :goto_5

    .line 266
    .end local v11    # "translationY":F
    .restart local v19    # "translationY":F
    :cond_5
    if-lez v15, :cond_6

    if-eqz v13, :cond_6

    .line 267
    neg-int v11, v14

    .line 268
    .local v11, "rowShift":I
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 270
    .end local v11    # "rowShift":I
    :cond_6
    sub-int v11, v16, v1

    .line 271
    .restart local v11    # "rowShift":I
    add-int/lit8 v16, v16, 0x1

    .line 274
    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    mul-int v18, v11, v10

    add-int v12, v12, v18

    .line 275
    .local v12, "oldY":I
    move/from16 v24, v1

    .end local v1    # "position":I
    .local v24, "position":I
    int-to-float v1, v12

    sub-float/2addr v1, v2

    move v11, v1

    .line 277
    .end local v12    # "oldY":I
    .end local v19    # "translationY":F
    .local v11, "translationY":F
    :goto_5
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v1, v8, v12, v11}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 278
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v11

    .line 235
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "newY":F
    .end local v5    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v11    # "translationY":F
    .end local v22    # "itemId":J
    .end local v24    # "position":I
    .local v8, "translationY":F
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v5, v25

    move/from16 v11, v26

    move/from16 v12, v27

    goto/16 :goto_1

    .end local v20    # "listview":Landroid/widget/ListView;
    .end local v21    # "childCountAfter":I
    .end local v25    # "headerViewsCount":I
    .end local v26    # "left":I
    .end local v27    # "width":I
    .local v1, "listview":Landroid/widget/ListView;
    .local v2, "childCountAfter":I
    .local v5, "headerViewsCount":I
    .local v11, "left":I
    .local v12, "width":I
    :cond_7
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v25, v5

    move/from16 v19, v8

    move/from16 v26, v11

    move/from16 v27, v12

    .line 283
    .end local v1    # "listview":Landroid/widget/ListView;
    .end local v2    # "childCountAfter":I
    .end local v4    # "i":I
    .end local v5    # "headerViewsCount":I
    .end local v8    # "translationY":F
    .end local v11    # "left":I
    .end local v12    # "width":I
    .restart local v19    # "translationY":F
    .restart local v20    # "listview":Landroid/widget/ListView;
    .restart local v21    # "childCountAfter":I
    .restart local v25    # "headerViewsCount":I
    .restart local v26    # "left":I
    .restart local v27    # "width":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 284
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/4 v2, 0x0

    .line 286
    .end local v19    # "translationY":F
    .local v2, "updateListenerAdded":Z
    .restart local v8    # "translationY":F
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 288
    .local v4, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 290
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v11, v11, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move-object/from16 v19, v1

    .end local v1    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v19, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    add-int v1, v26, v27

    move-object/from16 v22, v4

    .end local v4    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .local v22, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    iget v4, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v23, v6

    move/from16 v6, v26

    .end local v26    # "left":I
    .local v6, "left":I
    .local v23, "footerViewsCount":I
    invoke-direct {v11, v6, v12, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v11

    .line 292
    .local v1, "startValue":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v11, v12}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v4

    .line 297
    .local v4, "newPosition":I
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 300
    .local v11, "isDeletedItem":Z
    sub-int v12, v4, v3

    .line 304
    .local v12, "destinationViewIndex":I
    move/from16 v24, v3

    .end local v3    # "firstVisiblePosAfter":I
    .local v24, "firstVisiblePosAfter":I
    if-ltz v12, :cond_9

    move/from16 v3, v21

    .end local v21    # "childCountAfter":I
    .local v3, "childCountAfter":I
    if-lt v12, v3, :cond_8

    move/from16 v21, v4

    move/from16 v28, v6

    move-object/from16 v4, v20

    move/from16 v20, v7

    goto :goto_8

    .line 314
    :cond_8
    move/from16 v21, v4

    move-object/from16 v4, v20

    .end local v20    # "listview":Landroid/widget/ListView;
    .local v4, "listview":Landroid/widget/ListView;
    .local v21, "newPosition":I
    invoke-virtual {v4, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move/from16 v28, v6

    .end local v6    # "left":I
    .local v28, "left":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    .line 315
    .local v6, "referenceY":F
    move/from16 v20, v7

    .end local v7    # "adapterCount":I
    .local v20, "adapterCount":I
    iget v7, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    move v8, v7

    .end local v8    # "translationY":F
    .local v7, "translationY":F
    goto :goto_a

    .line 304
    .end local v3    # "childCountAfter":I
    .end local v28    # "left":I
    .local v4, "newPosition":I
    .local v6, "left":I
    .local v7, "adapterCount":I
    .restart local v8    # "translationY":F
    .local v20, "listview":Landroid/widget/ListView;
    .local v21, "childCountAfter":I
    :cond_9
    move/from16 v28, v6

    move/from16 v3, v21

    move/from16 v21, v4

    move-object/from16 v4, v20

    move/from16 v20, v7

    .line 306
    .end local v6    # "left":I
    .end local v7    # "adapterCount":I
    .restart local v3    # "childCountAfter":I
    .local v4, "listview":Landroid/widget/ListView;
    .local v20, "adapterCount":I
    .local v21, "newPosition":I
    .restart local v28    # "left":I
    :goto_8
    if-nez v3, :cond_a

    .line 307
    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    .local v6, "firstChildTop":F
    goto :goto_9

    .line 309
    .end local v6    # "firstChildTop":F
    :cond_a
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    .line 311
    .restart local v6    # "firstChildTop":F
    :goto_9
    iget v7, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    .line 312
    .end local v8    # "translationY":F
    .local v7, "translationY":F
    neg-int v8, v12

    mul-int/2addr v8, v10

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 313
    .end local v6    # "firstChildTop":F
    move v8, v7

    .line 318
    .end local v7    # "translationY":F
    .restart local v8    # "translationY":F
    :goto_a
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 319
    .local v6, "endValue":Landroid/graphics/Rect;
    float-to-int v7, v8

    move/from16 v29, v3

    const/4 v3, 0x0

    .end local v3    # "childCountAfter":I
    .local v29, "childCountAfter":I
    invoke-virtual {v6, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 321
    if-eqz v11, :cond_b

    .line 323
    sget v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v3

    const/high16 v30, 0x40000000    # 2.0f

    div-float v3, v3, v30

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    float-to-int v3, v3

    .line 324
    .local v3, "horizOffset":I
    sget v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v7, v31, v7

    div-float v7, v7, v30

    move-object/from16 v30, v4

    .end local v4    # "listview":Landroid/widget/ListView;
    .local v30, "listview":Landroid/widget/ListView;
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v7, v4

    float-to-int v4, v7

    .line 325
    .local v4, "vertOffset":I
    new-instance v7, Landroid/graphics/Rect;

    move/from16 v31, v8

    .end local v8    # "translationY":F
    .local v31, "translationY":F
    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v3

    move/from16 v32, v10

    .end local v10    # "singleItemHeight":I
    .local v32, "singleItemHeight":I
    iget v10, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v4

    move/from16 v33, v11

    .end local v11    # "isDeletedItem":Z
    .local v33, "isDeletedItem":Z
    iget v11, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v3

    move/from16 v34, v3

    .end local v3    # "horizOffset":I
    .local v34, "horizOffset":I
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-direct {v7, v8, v10, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v7

    goto :goto_b

    .line 321
    .end local v30    # "listview":Landroid/widget/ListView;
    .end local v31    # "translationY":F
    .end local v32    # "singleItemHeight":I
    .end local v33    # "isDeletedItem":Z
    .end local v34    # "horizOffset":I
    .local v4, "listview":Landroid/widget/ListView;
    .restart local v8    # "translationY":F
    .restart local v10    # "singleItemHeight":I
    .restart local v11    # "isDeletedItem":Z
    :cond_b
    move-object/from16 v30, v4

    move/from16 v31, v8

    move/from16 v32, v10

    move/from16 v33, v11

    .line 329
    .end local v4    # "listview":Landroid/widget/ListView;
    .end local v8    # "translationY":F
    .end local v10    # "singleItemHeight":I
    .end local v11    # "isDeletedItem":Z
    .restart local v30    # "listview":Landroid/widget/ListView;
    .restart local v31    # "translationY":F
    .restart local v32    # "singleItemHeight":I
    .restart local v33    # "isDeletedItem":Z
    :goto_b
    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v6, v7, v18

    const-string v8, "bounds"

    invoke-static {v8, v3, v7}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 331
    .local v3, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    new-array v7, v4, [I

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 332
    .local v7, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v8, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    aput-object v7, v4, v18

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 334
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    if-nez v2, :cond_c

    .line 335
    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v8, v8, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    const/4 v2, 0x1

    .line 338
    :cond_c
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v1    # "startValue":Landroid/graphics/Rect;
    .end local v3    # "pvhBounds":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v6    # "endValue":Landroid/graphics/Rect;
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

    goto/16 :goto_7

    .line 341
    .end local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v23    # "footerViewsCount":I
    .end local v24    # "firstVisiblePosAfter":I
    .end local v28    # "left":I
    .end local v29    # "childCountAfter":I
    .end local v30    # "listview":Landroid/widget/ListView;
    .end local v31    # "translationY":F
    .end local v32    # "singleItemHeight":I
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v3, "firstVisiblePosAfter":I
    .local v6, "footerViewsCount":I
    .local v7, "adapterCount":I
    .restart local v8    # "translationY":F
    .restart local v10    # "singleItemHeight":I
    .local v20, "listview":Landroid/widget/ListView;
    .local v21, "childCountAfter":I
    .restart local v26    # "left":I
    :cond_d
    move-object/from16 v19, v1

    move/from16 v24, v3

    .end local v1    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v3    # "firstVisiblePosAfter":I
    .restart local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v24    # "firstVisiblePosAfter":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 342
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 344
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 345
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 346
    new-instance v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    sget-object v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 393
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 394
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postDelayed #1 mAniTimeoutRunnable delay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
