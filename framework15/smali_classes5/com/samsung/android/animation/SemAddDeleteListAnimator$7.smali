.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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

.field final synthetic blacklist val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$insertedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;ILjava/util/HashMap;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$childCountBefore:I

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItemPosHash:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-le v6, v4, :cond_0

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v14}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$mgetChildMaxHeight(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v14

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v15

    add-int v10, v14, v15

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v12

    :goto_0
    const/4 v14, 0x1

    move v15, v2

    move/from16 v16, v15

    add-int/lit8 v17, v3, 0x1

    iget v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$childCountBefore:I

    sub-int/2addr v13, v6

    add-int v17, v17, v13

    const/4 v13, 0x0

    :goto_1
    const/16 v18, 0x1

    if-ge v13, v6, :cond_b

    move/from16 v19, v3

    add-int v3, v13, v2

    move/from16 v20, v8

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v21

    invoke-virtual {v1, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/16 v23, 0x0

    move/from16 v24, v15

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    int-to-float v15, v15

    const-wide/16 v25, -0x1

    cmp-long v25, v21, v25

    move-object/from16 v26, v1

    if-nez v25, :cond_5

    if-ge v3, v4, :cond_1

    add-int/lit8 v1, v3, 0x1

    move/from16 v27, v11

    move/from16 v28, v12

    int-to-long v11, v1

    move v1, v4

    move/from16 v29, v5

    move-wide/from16 v21, v11

    goto :goto_2

    :cond_1
    move/from16 v27, v11

    move/from16 v28, v12

    sub-int v1, v7, v5

    if-lt v3, v1, :cond_2

    add-int v1, v3, v5

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    int-to-long v11, v1

    move v1, v4

    move/from16 v29, v5

    neg-long v4, v11

    move-wide/from16 v21, v4

    goto :goto_2

    :cond_2
    move v1, v4

    move/from16 v29, v5

    :goto_2
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-nez v4, :cond_3

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v11, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v1

    move/from16 v33, v7

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    cmpl-float v5, v5, v15

    if-nez v5, :cond_4

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v1

    move/from16 v33, v7

    goto/16 :goto_3

    :cond_4
    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, v15

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v23, v1

    move v8, v5

    move/from16 v33, v7

    goto/16 :goto_5

    :cond_5
    move v1, v4

    move/from16 v29, v5

    move/from16 v27, v11

    move/from16 v28, v12

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    const/4 v11, 0x0

    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v12, v12

    cmpl-float v12, v12, v15

    if-nez v12, :cond_6

    move/from16 v23, v1

    move/from16 v33, v7

    move v14, v11

    move/from16 v8, v20

    goto/16 :goto_5

    :cond_6
    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v12, v12

    sub-float/2addr v12, v15

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move/from16 v23, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v8, v1, v12}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v33, v7

    move v14, v11

    move v8, v12

    goto/16 :goto_5

    :cond_7
    move/from16 v23, v1

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v15

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v1

    move/from16 v33, v7

    goto/16 :goto_5

    :cond_8
    add-int v1, v13, v2

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v18, v4

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v1, v12, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    sub-int v11, v1, v4

    sub-int v12, v1, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v30

    mul-int v31, v12, v10

    move/from16 v32, v4

    sub-int v4, v30, v31

    move-object/from16 v30, v5

    int-to-float v5, v4

    sub-float/2addr v5, v15

    move/from16 v31, v4

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move/from16 v33, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v8, v7, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_3
    move/from16 v8, v20

    goto :goto_5

    :cond_9
    move-object/from16 v18, v4

    move-object/from16 v30, v5

    move/from16 v33, v7

    if-lez v16, :cond_a

    if-eqz v14, :cond_a

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v5, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    neg-int v4, v4

    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    :cond_a
    sub-int v4, v17, v3

    add-int/lit8 v17, v17, 0x1

    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    mul-int v7, v4, v10

    add-int/2addr v5, v7

    int-to-float v7, v5

    sub-float/2addr v7, v15

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v19

    move/from16 v4, v23

    move/from16 v15, v24

    move-object/from16 v1, v26

    move/from16 v11, v27

    move/from16 v12, v28

    move/from16 v5, v29

    move/from16 v7, v33

    goto/16 :goto_1

    :cond_b
    move-object/from16 v26, v1

    move/from16 v19, v3

    move/from16 v23, v4

    move/from16 v29, v5

    move/from16 v33, v7

    move/from16 v20, v8

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v24, v15

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "bounds"

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v11, v11, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroid/graphics/Rect;

    iget v12, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v13, v27, v28

    iget v15, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move-object/from16 v20, v1

    move/from16 v1, v27

    invoke-direct {v11, v1, v12, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v13, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v21, v4

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v13, v15, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v13, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    sub-int v13, v4, v2

    if-gez v13, :cond_d

    if-nez v6, :cond_c

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    move/from16 v22, v2

    move v2, v15

    move-object/from16 v15, v26

    goto :goto_7

    :cond_c
    move/from16 v22, v2

    move-object/from16 v15, v26

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    :goto_7
    move/from16 v25, v4

    iget v4, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    neg-int v8, v13

    mul-int/2addr v8, v10

    int-to-float v8, v8

    sub-float/2addr v4, v8

    move v8, v4

    goto :goto_9

    :cond_d
    move/from16 v22, v2

    move/from16 v25, v4

    move-object/from16 v15, v26

    if-lt v13, v6, :cond_f

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_e

    iget v2, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    const/4 v4, 0x0

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    goto :goto_8

    :cond_e
    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v4, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    :goto_8
    sub-int v4, v13, v6

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v10

    int-to-float v4, v4

    add-float/2addr v2, v4

    move v8, v2

    goto :goto_9

    :cond_f
    invoke-virtual {v15, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v4, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    move v8, v4

    :goto_9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    float-to-int v4, v8

    move/from16 v26, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v12, :cond_10

    sget v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    const/high16 v27, 0x40000000    # 2.0f

    div-float v4, v4, v27

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sget v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v6, v30, v6

    div-float v6, v6, v27

    move/from16 v27, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    new-instance v8, Landroid/graphics/Rect;

    move/from16 v30, v12

    iget v12, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v4

    move/from16 v31, v13

    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    move/from16 v32, v14

    iget v14, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v4

    move/from16 v34, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    invoke-direct {v8, v12, v13, v14, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v8

    sget-object v4, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v4, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/16 v5, 0xff

    const/4 v12, 0x0

    filled-new-array {v5, v12}, [I

    move-result-object v5

    const-string v8, "alpha"

    invoke-static {v8, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iget-object v8, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v13, v12

    aput-object v5, v13, v18

    invoke-static {v8, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_a

    :cond_10
    move/from16 v27, v8

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    const/4 v12, 0x0

    iget-object v4, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v6, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :goto_a
    if-nez v3, :cond_11

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x1

    :cond_11
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    move/from16 v6, v26

    move/from16 v8, v27

    move/from16 v14, v32

    move/from16 v27, v1

    move-object/from16 v26, v15

    move-object/from16 v1, v20

    goto/16 :goto_6

    :cond_12
    move-object/from16 v20, v1

    move/from16 v22, v2

    move/from16 v32, v14

    move-object/from16 v15, v26

    move/from16 v1, v27

    move/from16 v26, v6

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget v7, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/2addr v11, v10

    add-int/2addr v7, v11

    new-instance v11, Landroid/graphics/Rect;

    iget v12, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v13, v1, v28

    iget v14, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v11, v1, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v13, v1

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v7

    invoke-direct {v12, v1, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v14, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move/from16 v27, v1

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v13, v5, v14, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-nez v3, :cond_13

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_13
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v27

    goto :goto_b

    :cond_14
    move/from16 v27, v1

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;

    invoke-direct {v4, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postDelayed #3 mAniTimeoutRunnable delay = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v6, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v6, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
