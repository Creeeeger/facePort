.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$insertedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-le v5, v3, :cond_0

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$mgetChildMaxWidth(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v9

    invoke-virtual {v1, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v1, v12}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v11

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v11

    :goto_0
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v5, :cond_9

    add-int v14, v13, v2

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v14}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v15

    invoke-virtual {v1, v13}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const/16 v17, 0x0

    move/from16 v18, v3

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    move/from16 v20, v7

    if-nez v19, :cond_3

    add-int v19, v14, v4

    sub-int v19, v19, v6

    add-int/lit8 v7, v19, 0x1

    move/from16 v19, v6

    int-to-long v6, v7

    move/from16 v22, v4

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move/from16 v23, v10

    move/from16 v24, v11

    neg-long v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v10, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v10, v10

    cmpl-float v10, v10, v3

    if-nez v10, :cond_2

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v25, v6

    const-string v6, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.left="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-wide/from16 v25, v6

    iget v6, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v10, 0x0

    invoke-virtual {v7, v12, v6, v10}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v26, v2

    move v7, v6

    goto/16 :goto_5

    :cond_3
    move/from16 v22, v4

    move/from16 v19, v6

    move/from16 v23, v10

    move/from16 v24, v11

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v6, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v7, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-nez v7, :cond_4

    nop

    :goto_2
    move/from16 v26, v2

    move/from16 v7, v20

    goto/16 :goto_5

    :cond_4
    iget v7, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v11, 0x0

    invoke-virtual {v10, v12, v7, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v26, v2

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v11, 0x0

    invoke-virtual {v10, v12, v7, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v26, v2

    goto :goto_5

    :cond_6
    add-int v7, v13, v2

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v7, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v10

    sub-int v11, v7, v10

    sub-int v17, v7, v11

    const/16 v25, -0x1

    move/from16 v26, v2

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v2

    mul-int v27, v17, v9

    add-int v2, v2, v27

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v2

    mul-int v27, v17, v9

    sub-int v2, v2, v27

    :goto_3
    move-object/from16 v25, v4

    int-to-float v4, v2

    sub-float/2addr v4, v3

    move/from16 v27, v2

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    move/from16 v28, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v4, v3}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-virtual {v2, v12, v4, v3}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_4
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v4

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v18

    move/from16 v6, v19

    move/from16 v4, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v2, v26

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_9
    move/from16 v26, v2

    move/from16 v18, v3

    move/from16 v22, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v23, v10

    move/from16 v24, v11

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    const/4 v4, 0x0

    move v6, v3

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v10, "bounds"

    if-eqz v7, :cond_10

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getNewPositionForInsert(ILjava/util/ArrayList;)I

    move-result v12

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v13

    if-ge v12, v13, :cond_d

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v13, v12

    if-eqz v5, :cond_b

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v15

    :goto_7
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v14}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_c

    mul-int v14, v13, v9

    add-int/2addr v14, v15

    goto :goto_8

    :cond_c
    mul-int v14, v13, v9

    sub-int v14, v15, v14

    :goto_8
    goto :goto_9

    :cond_d
    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    sub-int v13, v6, v13

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v14}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_e

    iget v14, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    mul-int v15, v13, v9

    sub-int/2addr v14, v15

    goto :goto_9

    :cond_e
    iget v14, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    mul-int v15, v13, v9

    add-int/2addr v14, v15

    :goto_9
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v16, v1

    iget v1, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move-object/from16 v17, v2

    iget v2, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v21, v3

    add-int v3, v23, v24

    move/from16 v25, v5

    move/from16 v5, v23

    invoke-direct {v15, v1, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v15

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int/2addr v15, v5

    invoke-direct {v2, v14, v5, v3, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v15, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move/from16 v23, v6

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v10, v15, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_f

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v6, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, 0x1

    :cond_f
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v21

    move/from16 v6, v23

    move/from16 v23, v5

    move/from16 v5, v25

    goto/16 :goto_6

    :cond_10
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v21, v3

    move/from16 v25, v5

    move/from16 v5, v23

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget v7, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/2addr v11, v9

    add-int/2addr v7, v11

    new-instance v11, Landroid/graphics/Rect;

    iget v12, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget v13, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    add-int v14, v5, v24

    invoke-direct {v11, v12, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v5

    invoke-direct {v12, v7, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v14, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v13, v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    if-nez v4, :cond_11

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v14, v14, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_11
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mTranslationDuration:I

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
