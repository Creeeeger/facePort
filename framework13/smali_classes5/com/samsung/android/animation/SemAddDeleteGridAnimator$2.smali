.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteGridAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$deletedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$firstVisiblePosBefore:I

.field final synthetic blacklist val$gridView:Landroid/widget/GridView;

.field final synthetic blacklist val$lastVisiblePosBefore:I

.field final synthetic blacklist val$singleRowHeightBefore:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/GridView;IIILandroid/widget/ListAdapter;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    .line 198
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    iput p5, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 30

    .line 200
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 203
    .local v2, "childCountAfter":I
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 205
    .local v3, "firstVisiblePosAfter":I
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getNumColumns()I

    move-result v4

    .line 206
    .local v4, "numColumns":I
    const/4 v5, -0x1

    .line 207
    .local v5, "singleRowHeight":I
    const/4 v6, 0x0

    if-le v2, v4, :cond_0

    .line 208
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v7, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v8, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .end local v5    # "singleRowHeight":I
    .local v7, "singleRowHeight":I
    goto :goto_0

    .line 210
    .end local v7    # "singleRowHeight":I
    .restart local v5    # "singleRowHeight":I
    :cond_0
    iget v7, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    .line 213
    .end local v5    # "singleRowHeight":I
    .restart local v7    # "singleRowHeight":I
    :goto_0
    const/4 v5, 0x1

    .line 214
    .local v5, "newItemsComingFromTop":Z
    iget v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    sub-int/2addr v8, v3

    .line 215
    .local v8, "newItemsComingFromTopCount":I
    move v9, v8

    .line 216
    .local v9, "newItemsFromTopRemaining":I
    iget v10, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    .line 218
    .local v10, "lastNewlyAppearingViewPosition":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v2, :cond_6

    .line 219
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v12, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 220
    .local v12, "child":Landroid/view/View;
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    add-int v14, v11, v3

    invoke-interface {v13, v14}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 221
    .local v13, "itemId":J
    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v15, v15, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 223
    .local v6, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v15

    int-to-float v15, v15

    .line 224
    .local v15, "newX":F
    move-wide/from16 v16, v13

    .end local v13    # "itemId":J
    .local v16, "itemId":J
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    int-to-float v13, v13

    .line 225
    .local v13, "newY":F
    const/4 v14, 0x0

    .line 226
    .local v14, "translationX":F
    const/16 v18, 0x0

    .line 227
    .local v18, "translationY":F
    if-eqz v6, :cond_2

    .line 228
    const/4 v5, 0x0

    .line 229
    invoke-virtual {v6}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 230
    move/from16 v19, v5

    .end local v5    # "newItemsComingFromTop":Z
    .local v19, "newItemsComingFromTop":Z
    iget v5, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v5, v5

    cmpl-float v5, v5, v15

    if-nez v5, :cond_1

    iget v5, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    cmpl-float v5, v5, v13

    if-nez v5, :cond_1

    .line 231
    move/from16 v26, v8

    move/from16 v23, v11

    move/from16 v5, v19

    goto/16 :goto_5

    .line 234
    :cond_1
    iget v5, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v15

    .line 235
    .end local v14    # "translationX":F
    .local v5, "translationX":F
    iget v14, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v14, v14

    sub-float/2addr v14, v13

    move-object/from16 v22, v6

    move/from16 v26, v8

    move/from16 v23, v11

    .end local v18    # "translationY":F
    .local v14, "translationY":F
    goto/16 :goto_4

    .line 239
    .end local v19    # "newItemsComingFromTop":Z
    .local v5, "newItemsComingFromTop":Z
    .local v14, "translationX":F
    .restart local v18    # "translationY":F
    :cond_2
    add-int v19, v11, v3

    .line 240
    .local v19, "currentPos":I
    const/16 v20, -0x1

    .line 241
    .local v20, "oldPosition":I
    if-lez v9, :cond_3

    if-eqz v5, :cond_3

    .line 242
    sub-int v20, v19, v8

    .line 243
    add-int/lit8 v9, v9, -0x1

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v5, v20

    goto :goto_2

    .line 245
    :cond_3
    move/from16 v21, v5

    .end local v5    # "newItemsComingFromTop":Z
    .local v21, "newItemsComingFromTop":Z
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v22, v6

    .end local v6    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v22, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-static {v5, v6, v10}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$mgetNextAppearingViewPosition(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Ljava/util/HashSet;I)I

    move-result v20

    .line 246
    move/from16 v10, v20

    move/from16 v5, v20

    .line 249
    .end local v20    # "oldPosition":I
    .local v5, "oldPosition":I
    :goto_2
    move v6, v8

    move/from16 v20, v9

    .end local v8    # "newItemsComingFromTopCount":I
    .end local v9    # "newItemsFromTopRemaining":I
    .local v6, "newItemsComingFromTopCount":I
    .local v20, "newItemsFromTopRemaining":I
    int-to-double v8, v5

    move/from16 v24, v10

    move/from16 v23, v11

    .end local v10    # "lastNewlyAppearingViewPosition":I
    .end local v11    # "i":I
    .local v23, "i":I
    .local v24, "lastNewlyAppearingViewPosition":I
    int-to-double v10, v4

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 250
    .local v8, "oldPosRowId":I
    div-int v9, v19, v4

    .line 251
    .local v9, "newPosRowId":I
    sub-int v10, v8, v9

    .line 253
    .local v10, "rowShift":I
    rem-int v11, v5, v4

    .line 254
    .local v11, "refPosForLeftCoordinate":I
    if-gez v11, :cond_4

    add-int/2addr v11, v4

    .line 257
    :cond_4
    if-le v2, v11, :cond_5

    .line 258
    move/from16 v25, v5

    .end local v5    # "oldPosition":I
    .local v25, "oldPosition":I
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move/from16 v26, v6

    move/from16 v27, v8

    .local v5, "oldX":I
    goto :goto_3

    .line 260
    .end local v25    # "oldPosition":I
    .local v5, "oldPosition":I
    :cond_5
    move/from16 v25, v5

    .end local v5    # "oldPosition":I
    .restart local v25    # "oldPosition":I
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move/from16 v26, v6

    const/4 v6, 0x0

    .end local v6    # "newItemsComingFromTopCount":I
    .local v26, "newItemsComingFromTopCount":I
    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move/from16 v27, v8

    .end local v8    # "oldPosRowId":I
    .local v27, "oldPosRowId":I
    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v8, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v6

    mul-int/2addr v6, v11

    add-int/2addr v5, v6

    .line 262
    .local v5, "oldX":I
    :goto_3
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    mul-int v8, v10, v7

    add-int/2addr v6, v8

    .line 264
    .local v6, "oldY":I
    int-to-float v8, v5

    sub-float/2addr v8, v15

    .line 265
    .end local v14    # "translationX":F
    .local v8, "translationX":F
    int-to-float v14, v6

    sub-float/2addr v14, v13

    move v5, v8

    move/from16 v9, v20

    move/from16 v19, v21

    move/from16 v10, v24

    .line 268
    .end local v6    # "oldY":I
    .end local v8    # "translationX":F
    .end local v11    # "refPosForLeftCoordinate":I
    .end local v18    # "translationY":F
    .end local v20    # "newItemsFromTopRemaining":I
    .end local v21    # "newItemsComingFromTop":Z
    .end local v24    # "lastNewlyAppearingViewPosition":I
    .end local v25    # "oldPosition":I
    .end local v27    # "oldPosRowId":I
    .local v5, "translationX":F
    .local v9, "newItemsFromTopRemaining":I
    .local v10, "lastNewlyAppearingViewPosition":I
    .local v14, "translationY":F
    .local v19, "newItemsComingFromTop":Z
    :goto_4
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-virtual {v6, v12, v5, v14}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 269
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v19

    .line 218
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "newY":F
    .end local v14    # "translationY":F
    .end local v15    # "newX":F
    .end local v16    # "itemId":J
    .end local v19    # "newItemsComingFromTop":Z
    .end local v22    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v5, "newItemsComingFromTop":Z
    :goto_5
    add-int/lit8 v11, v23, 0x1

    move/from16 v8, v26

    const/4 v6, 0x0

    .end local v23    # "i":I
    .local v11, "i":I
    goto/16 :goto_1

    .end local v26    # "newItemsComingFromTopCount":I
    .local v8, "newItemsComingFromTopCount":I
    :cond_6
    move/from16 v21, v5

    move/from16 v26, v8

    move/from16 v23, v11

    .line 274
    .end local v5    # "newItemsComingFromTop":Z
    .end local v8    # "newItemsComingFromTopCount":I
    .end local v11    # "i":I
    .restart local v21    # "newItemsComingFromTop":Z
    .restart local v26    # "newItemsComingFromTopCount":I
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 275
    .local v5, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/4 v6, 0x0

    .line 277
    .local v6, "updateListenerAdded":Z
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 278
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 279
    .local v8, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 281
    .local v11, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v12, v12, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v12, Landroid/graphics/Rect;

    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget v14, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget v15, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move-object/from16 v16, v5

    .end local v5    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v16, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    iget v5, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v12, v13, v14, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v12

    .line 283
    .local v5, "startValue":Landroid/graphics/Rect;
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v12

    .line 288
    .local v12, "newPosition":I
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v14, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 291
    .local v13, "isDeletedItem":Z
    sub-int v14, v12, v3

    .line 293
    .local v14, "destinationViewIndex":I
    const/4 v15, 0x0

    .line 294
    .local v15, "referenceX":F
    const/16 v17, 0x0

    .line 297
    .local v17, "referenceY":F
    if-ltz v14, :cond_8

    if-lt v14, v2, :cond_7

    move/from16 v18, v3

    goto :goto_7

    .line 306
    :cond_7
    move/from16 v18, v3

    .end local v3    # "firstVisiblePosAfter":I
    .local v18, "firstVisiblePosAfter":I
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v3, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    .line 307
    .end local v15    # "referenceX":F
    .local v3, "referenceX":F
    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v15, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    int-to-float v15, v15

    move/from16 v19, v2

    .end local v17    # "referenceY":F
    .local v15, "referenceY":F
    goto :goto_9

    .line 297
    .end local v18    # "firstVisiblePosAfter":I
    .local v3, "firstVisiblePosAfter":I
    .local v15, "referenceX":F
    .restart local v17    # "referenceY":F
    :cond_8
    move/from16 v18, v3

    .line 298
    .end local v3    # "firstVisiblePosAfter":I
    .restart local v18    # "firstVisiblePosAfter":I
    :goto_7
    rem-int v3, v12, v4

    if-le v2, v3, :cond_9

    .line 299
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move/from16 v19, v2

    .end local v2    # "childCountAfter":I
    .local v19, "childCountAfter":I
    rem-int v2, v12, v4

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    move v3, v2

    .end local v15    # "referenceX":F
    .local v2, "referenceX":F
    goto :goto_8

    .line 301
    .end local v19    # "childCountAfter":I
    .local v2, "childCountAfter":I
    .restart local v15    # "referenceX":F
    :cond_9
    move/from16 v19, v2

    .end local v2    # "childCountAfter":I
    .restart local v19    # "childCountAfter":I
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    move v3, v2

    .line 303
    .end local v15    # "referenceX":F
    .local v3, "referenceX":F
    :goto_8
    iget v2, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    div-int/2addr v2, v4

    div-int v15, v12, v4

    sub-int/2addr v2, v15

    .line 304
    .local v2, "rowShift":I
    iget v15, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    mul-int v20, v2, v7

    sub-int v15, v15, v20

    int-to-float v15, v15

    .line 305
    .end local v2    # "rowShift":I
    .end local v17    # "referenceY":F
    .local v15, "referenceY":F
    nop

    .line 309
    :goto_9
    iget v2, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    .line 310
    .local v2, "translationX":F
    move/from16 v17, v3

    .end local v3    # "referenceX":F
    .local v17, "referenceX":F
    iget v3, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v3, v3

    sub-float v3, v15, v3

    .line 312
    .local v3, "translationY":F
    move/from16 v20, v4

    .end local v4    # "numColumns":I
    .local v20, "numColumns":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 313
    .local v4, "endValue":Landroid/graphics/Rect;
    move/from16 v22, v7

    .end local v7    # "singleRowHeight":I
    .local v22, "singleRowHeight":I
    float-to-int v7, v2

    move/from16 v23, v2

    .end local v2    # "translationX":F
    .local v23, "translationX":F
    float-to-int v2, v3

    invoke-virtual {v4, v7, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 315
    if-eqz v13, :cond_a

    .line 317
    sget v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    const/high16 v24, 0x40000000    # 2.0f

    div-float v2, v2, v24

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 318
    .local v2, "horizOffset":I
    sget v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v7, v25, v7

    div-float v7, v7, v24

    move/from16 v24, v3

    .end local v3    # "translationY":F
    .local v24, "translationY":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v7, v3

    float-to-int v3, v7

    .line 319
    .local v3, "vertOffset":I
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v25, v8

    .end local v8    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .local v25, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v2

    move/from16 v27, v9

    .end local v9    # "newItemsFromTopRemaining":I
    .local v27, "newItemsFromTopRemaining":I
    iget v9, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v3

    move/from16 v28, v10

    .end local v10    # "lastNewlyAppearingViewPosition":I
    .local v28, "lastNewlyAppearingViewPosition":I
    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    move/from16 v29, v2

    .end local v2    # "horizOffset":I
    .local v29, "horizOffset":I
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-direct {v7, v8, v9, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v7

    goto :goto_a

    .line 315
    .end local v24    # "translationY":F
    .end local v25    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v27    # "newItemsFromTopRemaining":I
    .end local v28    # "lastNewlyAppearingViewPosition":I
    .end local v29    # "horizOffset":I
    .local v3, "translationY":F
    .restart local v8    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .restart local v9    # "newItemsFromTopRemaining":I
    .restart local v10    # "lastNewlyAppearingViewPosition":I
    :cond_a
    move/from16 v24, v3

    move-object/from16 v25, v8

    move/from16 v27, v9

    move/from16 v28, v10

    .line 323
    .end local v3    # "translationY":F
    .end local v8    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v9    # "newItemsFromTopRemaining":I
    .end local v10    # "lastNewlyAppearingViewPosition":I
    .restart local v24    # "translationY":F
    .restart local v25    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .restart local v27    # "newItemsFromTopRemaining":I
    .restart local v28    # "lastNewlyAppearingViewPosition":I
    :goto_a
    sget-object v2, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const-string v9, "bounds"

    invoke-static {v9, v2, v7}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 325
    .local v2, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    new-array v7, v3, [I

    fill-array-data v7, :array_0

    const-string v9, "alpha"

    invoke-static {v9, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 326
    .local v7, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v2, v3, v10

    aput-object v7, v3, v8

    invoke-static {v9, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 328
    .local v3, "anim":Landroid/animation/ObjectAnimator;
    if-nez v6, :cond_b

    .line 329
    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v8, v8, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 330
    const/4 v6, 0x1

    .line 332
    :cond_b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v2    # "pvhBounds":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "endValue":Landroid/graphics/Rect;
    .end local v5    # "startValue":Landroid/graphics/Rect;
    .end local v7    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v12    # "newPosition":I
    .end local v13    # "isDeletedItem":Z
    .end local v14    # "destinationViewIndex":I
    .end local v15    # "referenceY":F
    .end local v17    # "referenceX":F
    .end local v23    # "translationX":F
    .end local v24    # "translationY":F
    .end local v25    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    move-object/from16 v5, v16

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v4, v20

    move/from16 v7, v22

    move/from16 v9, v27

    move/from16 v10, v28

    goto/16 :goto_6

    .line 335
    .end local v16    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v18    # "firstVisiblePosAfter":I
    .end local v19    # "childCountAfter":I
    .end local v20    # "numColumns":I
    .end local v22    # "singleRowHeight":I
    .end local v27    # "newItemsFromTopRemaining":I
    .end local v28    # "lastNewlyAppearingViewPosition":I
    .local v2, "childCountAfter":I
    .local v3, "firstVisiblePosAfter":I
    .local v4, "numColumns":I
    .local v5, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v7, "singleRowHeight":I
    .restart local v9    # "newItemsFromTopRemaining":I
    .restart local v10    # "lastNewlyAppearingViewPosition":I
    :cond_c
    move/from16 v19, v2

    move/from16 v18, v3

    .end local v2    # "childCountAfter":I
    .end local v3    # "firstVisiblePosAfter":I
    .restart local v18    # "firstVisiblePosAfter":I
    .restart local v19    # "childCountAfter":I
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 337
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 338
    .local v2, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 339
    new-instance v3, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    sget-object v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mTranslationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 369
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 370
    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
