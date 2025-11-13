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
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 915
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
    .locals 37

    .line 917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    .line 918
    .local v1, "listview":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 919
    .local v2, "firstVisiblePos":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 920
    .local v3, "lastVisiblePos":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 921
    .local v4, "headerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    .line 922
    .local v5, "footerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 923
    .local v6, "childCount":I
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    .line 924
    .local v7, "adapterCount":I
    const/4 v8, 0x0

    .line 925
    .local v8, "translationY":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v10, 0x0

    .line 929
    .local v10, "singleItemHeight":I
    const/4 v11, 0x0

    .line 930
    .local v11, "left":I
    const/4 v12, 0x0

    .line 931
    .local v12, "width":I
    const/4 v13, 0x0

    if-le v6, v4, :cond_0

    .line 932
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v14}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$mgetChildMaxHeight(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v14

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v15

    add-int v10, v14, v15

    .line 933
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 934
    invoke-virtual {v1, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_0

    .line 936
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v12

    .line 939
    :goto_0
    const/4 v14, 0x1

    .line 940
    .local v14, "newItemsComingFromTop":Z
    move v15, v2

    .line 941
    .local v15, "newItemsComingFromTopCount":I
    move/from16 v16, v15

    .line 942
    .local v16, "newItemsFromTopRemaining":I
    add-int/lit8 v17, v3, 0x1

    iget v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$childCountBefore:I

    sub-int/2addr v13, v6

    add-int v17, v17, v13

    .line 945
    .local v17, "newlyAppearingViewOldPositionFromBottom":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/16 v19, 0x1

    if-ge v13, v6, :cond_b

    .line 946
    move/from16 v20, v3

    .end local v3    # "lastVisiblePos":I
    .local v20, "lastVisiblePos":I
    add-int v3, v13, v2

    .line 947
    .local v3, "position":I
    move/from16 v21, v8

    .end local v8    # "translationY":F
    .local v21, "translationY":F
    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 948
    .local v22, "itemId":J
    invoke-virtual {v1, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 949
    .local v8, "child":Landroid/view/View;
    const/16 v24, 0x0

    .line 950
    .local v24, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move/from16 v25, v15

    .end local v15    # "newItemsComingFromTopCount":I
    .local v25, "newItemsComingFromTopCount":I
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    int-to-float v15, v15

    .line 952
    .local v15, "newY":F
    const-wide/16 v26, -0x1

    cmp-long v26, v22, v26

    move-object/from16 v27, v1

    .end local v1    # "listview":Landroid/widget/ListView;
    .local v27, "listview":Landroid/widget/ListView;
    if-nez v26, :cond_5

    .line 953
    if-ge v3, v4, :cond_1

    .line 954
    add-int/lit8 v1, v3, 0x1

    move/from16 v28, v11

    move/from16 v29, v12

    .end local v11    # "left":I
    .end local v12    # "width":I
    .local v28, "left":I
    .local v29, "width":I
    int-to-long v11, v1

    move v1, v4

    move/from16 v30, v5

    move-wide/from16 v22, v11

    .end local v22    # "itemId":J
    .local v11, "itemId":J
    goto :goto_2

    .line 955
    .end local v28    # "left":I
    .end local v29    # "width":I
    .local v11, "left":I
    .restart local v12    # "width":I
    .restart local v22    # "itemId":J
    :cond_1
    move/from16 v28, v11

    move/from16 v29, v12

    .end local v11    # "left":I
    .end local v12    # "width":I
    .restart local v28    # "left":I
    .restart local v29    # "width":I
    sub-int v1, v7, v5

    if-lt v3, v1, :cond_2

    .line 956
    add-int v1, v3, v5

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    int-to-long v11, v1

    .line 957
    .local v11, "footerId":J
    move v1, v4

    move/from16 v30, v5

    .end local v4    # "headerViewsCount":I
    .end local v5    # "footerViewsCount":I
    .local v1, "headerViewsCount":I
    .local v30, "footerViewsCount":I
    neg-long v4, v11

    move-wide/from16 v22, v4

    .end local v22    # "itemId":J
    .local v4, "itemId":J
    goto :goto_2

    .line 955
    .end local v1    # "headerViewsCount":I
    .end local v11    # "footerId":J
    .end local v30    # "footerViewsCount":I
    .local v4, "headerViewsCount":I
    .restart local v5    # "footerViewsCount":I
    .restart local v22    # "itemId":J
    :cond_2
    move v1, v4

    move/from16 v30, v5

    .line 959
    .end local v4    # "headerViewsCount":I
    .end local v5    # "footerViewsCount":I
    .restart local v1    # "headerViewsCount":I
    .restart local v30    # "footerViewsCount":I
    :goto_2
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 961
    .end local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v4, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-nez v4, :cond_3

    .line 963
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v11, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    move/from16 v24, v1

    move/from16 v34, v7

    goto/16 :goto_3

    .line 967
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 968
    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    cmpl-float v5, v5, v15

    if-nez v5, :cond_4

    .line 970
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

    .line 972
    move/from16 v24, v1

    move/from16 v34, v7

    goto/16 :goto_3

    .line 974
    :cond_4
    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, v15

    .line 975
    .end local v21    # "translationY":F
    .local v5, "translationY":F
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 976
    .local v11, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    .end local v11    # "anim":Landroid/animation/ObjectAnimator;
    move/from16 v24, v1

    move v8, v5

    move/from16 v34, v7

    goto/16 :goto_5

    .line 980
    .end local v1    # "headerViewsCount":I
    .end local v28    # "left":I
    .end local v29    # "width":I
    .end local v30    # "footerViewsCount":I
    .local v4, "headerViewsCount":I
    .local v5, "footerViewsCount":I
    .local v11, "left":I
    .restart local v12    # "width":I
    .restart local v21    # "translationY":F
    .restart local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_5
    move v1, v4

    move/from16 v30, v5

    move/from16 v28, v11

    move/from16 v29, v12

    .end local v4    # "headerViewsCount":I
    .end local v5    # "footerViewsCount":I
    .end local v11    # "left":I
    .end local v12    # "width":I
    .restart local v1    # "headerViewsCount":I
    .restart local v28    # "left":I
    .restart local v29    # "width":I
    .restart local v30    # "footerViewsCount":I
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 982
    .local v4, "startPos":Ljava/lang/Integer;
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 983
    .end local v24    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-eqz v5, :cond_7

    .line 984
    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 985
    const/4 v11, 0x0

    .line 987
    .end local v14    # "newItemsComingFromTop":Z
    .local v11, "newItemsComingFromTop":Z
    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v12, v12

    cmpl-float v12, v12, v15

    if-nez v12, :cond_6

    .line 988
    move/from16 v24, v1

    move/from16 v34, v7

    move v14, v11

    move/from16 v8, v21

    goto/16 :goto_5

    .line 990
    :cond_6
    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v12, v12

    sub-float/2addr v12, v15

    .line 991
    .end local v21    # "translationY":F
    .local v12, "translationY":F
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move/from16 v24, v1

    const/4 v1, 0x0

    .end local v1    # "headerViewsCount":I
    .local v24, "headerViewsCount":I
    invoke-virtual {v14, v8, v1, v12}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 992
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    move/from16 v34, v7

    move v14, v11

    move v8, v12

    goto/16 :goto_5

    .end local v11    # "newItemsComingFromTop":Z
    .end local v12    # "translationY":F
    .end local v24    # "headerViewsCount":I
    .local v1, "headerViewsCount":I
    .restart local v14    # "newItemsComingFromTop":Z
    .restart local v21    # "translationY":F
    :cond_7
    move/from16 v24, v1

    .end local v1    # "headerViewsCount":I
    .restart local v24    # "headerViewsCount":I
    if-eqz v4, :cond_8

    .line 995
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v15

    .line 996
    .end local v21    # "translationY":F
    .local v1, "translationY":F
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 997
    .local v11, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    .end local v11    # "anim":Landroid/animation/ObjectAnimator;
    move v8, v1

    move/from16 v34, v7

    goto/16 :goto_5

    .line 1001
    .end local v1    # "translationY":F
    .restart local v21    # "translationY":F
    :cond_8
    add-int v1, v13, v2

    .line 1003
    .local v1, "currentPos":I
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1004
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v19, v4

    .end local v4    # "startPos":Ljava/lang/Integer;
    .local v19, "startPos":Ljava/lang/Integer;
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v1, v12, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    .line 1005
    .local v4, "shiftCount":I
    sub-int v11, v1, v4

    .line 1007
    .local v11, "oldPos":I
    sub-int v12, v1, v11

    .line 1008
    .local v12, "rowShiftInsert":I
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v31

    mul-int v32, v12, v10

    move/from16 v33, v4

    .end local v4    # "shiftCount":I
    .local v33, "shiftCount":I
    sub-int v4, v31, v32

    .line 1009
    .local v4, "oldYInsert":I
    move-object/from16 v31, v5

    .end local v5    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v31, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    int-to-float v5, v4

    sub-float/2addr v5, v15

    .line 1010
    .local v5, "translationYInsert":F
    move/from16 v32, v4

    .end local v4    # "oldYInsert":I
    .local v32, "oldYInsert":I
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move/from16 v34, v7

    const/4 v7, 0x0

    .end local v7    # "adapterCount":I
    .local v34, "adapterCount":I
    invoke-virtual {v4, v8, v7, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1011
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "translationYInsert":F
    .end local v11    # "oldPos":I
    .end local v12    # "rowShiftInsert":I
    .end local v32    # "oldYInsert":I
    .end local v33    # "shiftCount":I
    nop

    .line 945
    .end local v1    # "currentPos":I
    .end local v3    # "position":I
    .end local v8    # "child":Landroid/view/View;
    .end local v15    # "newY":F
    .end local v19    # "startPos":Ljava/lang/Integer;
    .end local v22    # "itemId":J
    .end local v31    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :goto_3
    move/from16 v8, v21

    goto :goto_5

    .line 1014
    .end local v34    # "adapterCount":I
    .restart local v1    # "currentPos":I
    .restart local v3    # "position":I
    .local v4, "startPos":Ljava/lang/Integer;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .restart local v7    # "adapterCount":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v15    # "newY":F
    .restart local v22    # "itemId":J
    :cond_9
    move-object/from16 v19, v4

    move-object/from16 v31, v5

    move/from16 v34, v7

    .end local v4    # "startPos":Ljava/lang/Integer;
    .end local v5    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v7    # "adapterCount":I
    .restart local v19    # "startPos":Ljava/lang/Integer;
    .restart local v31    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .restart local v34    # "adapterCount":I
    if-lez v16, :cond_a

    if-eqz v14, :cond_a

    .line 1015
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v5, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    neg-int v4, v4

    .line 1016
    .local v4, "rowShift":I
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 1018
    .end local v4    # "rowShift":I
    :cond_a
    sub-int v4, v17, v3

    .line 1019
    .restart local v4    # "rowShift":I
    add-int/lit8 v17, v17, 0x1

    .line 1022
    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    mul-int v7, v4, v10

    add-int/2addr v5, v7

    .line 1023
    .local v5, "oldY":I
    int-to-float v7, v5

    sub-float/2addr v7, v15

    .line 1024
    .end local v21    # "translationY":F
    .local v7, "translationY":F
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1025
    .local v11, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    .line 945
    .end local v1    # "currentPos":I
    .end local v3    # "position":I
    .end local v4    # "rowShift":I
    .end local v5    # "oldY":I
    .end local v7    # "translationY":F
    .end local v11    # "anim":Landroid/animation/ObjectAnimator;
    .end local v15    # "newY":F
    .end local v19    # "startPos":Ljava/lang/Integer;
    .end local v22    # "itemId":J
    .end local v31    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v8, "translationY":F
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v20

    move/from16 v4, v24

    move/from16 v15, v25

    move-object/from16 v1, v27

    move/from16 v11, v28

    move/from16 v12, v29

    move/from16 v5, v30

    move/from16 v7, v34

    goto/16 :goto_1

    .end local v20    # "lastVisiblePos":I
    .end local v24    # "headerViewsCount":I
    .end local v25    # "newItemsComingFromTopCount":I
    .end local v27    # "listview":Landroid/widget/ListView;
    .end local v28    # "left":I
    .end local v29    # "width":I
    .end local v30    # "footerViewsCount":I
    .end local v34    # "adapterCount":I
    .local v1, "listview":Landroid/widget/ListView;
    .local v3, "lastVisiblePos":I
    .local v4, "headerViewsCount":I
    .local v5, "footerViewsCount":I
    .local v7, "adapterCount":I
    .local v11, "left":I
    .local v12, "width":I
    .local v15, "newItemsComingFromTopCount":I
    :cond_b
    move-object/from16 v27, v1

    move/from16 v20, v3

    move/from16 v24, v4

    move/from16 v30, v5

    move/from16 v34, v7

    move/from16 v21, v8

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v25, v15

    .line 1031
    .end local v1    # "listview":Landroid/widget/ListView;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "headerViewsCount":I
    .end local v5    # "footerViewsCount":I
    .end local v7    # "adapterCount":I
    .end local v8    # "translationY":F
    .end local v11    # "left":I
    .end local v12    # "width":I
    .end local v13    # "i":I
    .end local v15    # "newItemsComingFromTopCount":I
    .restart local v20    # "lastVisiblePos":I
    .restart local v21    # "translationY":F
    .restart local v24    # "headerViewsCount":I
    .restart local v25    # "newItemsComingFromTopCount":I
    .restart local v27    # "listview":Landroid/widget/ListView;
    .restart local v28    # "left":I
    .restart local v29    # "width":I
    .restart local v30    # "footerViewsCount":I
    .restart local v34    # "adapterCount":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1035
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1038
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/4 v3, 0x0

    .line 1040
    .end local v21    # "translationY":F
    .local v3, "updateListenerAdded":Z
    .restart local v8    # "translationY":F
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "bounds"

    if-eqz v4, :cond_12

    .line 1041
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1042
    .local v4, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 1044
    .local v11, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v12, v12, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance v12, Landroid/graphics/Rect;

    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v15, v28, v29

    iget v7, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move-object/from16 v22, v1

    move/from16 v1, v28

    .end local v28    # "left":I
    .local v1, "left":I
    .local v22, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-direct {v12, v1, v13, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v12

    .line 1046
    .local v7, "startValue":Landroid/graphics/Rect;
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v23, v4

    .end local v4    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .local v23, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v13, v15, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    .line 1051
    .local v4, "newPosition":I
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 1054
    .local v12, "isDeletedItem":Z
    sub-int v13, v4, v2

    .line 1058
    .local v13, "destinationViewIndex":I
    if-gez v13, :cond_d

    .line 1060
    if-nez v6, :cond_c

    .line 1061
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    move/from16 v26, v2

    move v2, v15

    move-object/from16 v15, v27

    .local v15, "firstChildTop":F
    goto :goto_7

    .line 1063
    .end local v15    # "firstChildTop":F
    :cond_c
    move/from16 v26, v2

    move-object/from16 v15, v27

    const/4 v2, 0x0

    .end local v2    # "firstVisiblePos":I
    .end local v27    # "listview":Landroid/widget/ListView;
    .local v15, "listview":Landroid/widget/ListView;
    .local v26, "firstVisiblePos":I
    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 1065
    .local v2, "firstChildTop":F
    :goto_7
    move/from16 v27, v4

    .end local v4    # "newPosition":I
    .local v27, "newPosition":I
    iget v4, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 1066
    .end local v8    # "translationY":F
    .local v4, "translationY":F
    neg-int v8, v13

    mul-int/2addr v8, v10

    int-to-float v8, v8

    sub-float/2addr v4, v8

    .line 1067
    .end local v2    # "firstChildTop":F
    move v8, v4

    goto :goto_9

    .end local v15    # "listview":Landroid/widget/ListView;
    .end local v26    # "firstVisiblePos":I
    .local v2, "firstVisiblePos":I
    .local v4, "newPosition":I
    .restart local v8    # "translationY":F
    .local v27, "listview":Landroid/widget/ListView;
    :cond_d
    move/from16 v26, v2

    move-object/from16 v15, v27

    move/from16 v27, v4

    .end local v2    # "firstVisiblePos":I
    .end local v4    # "newPosition":I
    .restart local v15    # "listview":Landroid/widget/ListView;
    .restart local v26    # "firstVisiblePos":I
    .local v27, "newPosition":I
    if-lt v13, v6, :cond_f

    .line 1068
    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_e

    .line 1069
    iget v2, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    const/4 v4, 0x0

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    .end local v8    # "translationY":F
    .local v2, "translationY":F
    goto :goto_8

    .line 1071
    .end local v2    # "translationY":F
    .restart local v8    # "translationY":F
    :cond_e
    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v4, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 1073
    .end local v8    # "translationY":F
    .restart local v2    # "translationY":F
    :goto_8
    sub-int v4, v13, v6

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v10

    int-to-float v4, v4

    add-float/2addr v2, v4

    move v8, v2

    goto :goto_9

    .line 1075
    .end local v2    # "translationY":F
    .restart local v8    # "translationY":F
    :cond_f
    invoke-virtual {v15, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 1076
    .local v2, "referenceY":F
    iget v4, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    move v8, v4

    .line 1079
    .end local v2    # "referenceY":F
    :goto_9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1080
    .local v2, "endValue":Landroid/graphics/Rect;
    float-to-int v4, v8

    move/from16 v28, v6

    const/4 v6, 0x0

    .end local v6    # "childCount":I
    .local v28, "childCount":I
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1083
    if-eqz v12, :cond_10

    .line 1085
    sget v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    const/high16 v31, 0x40000000    # 2.0f

    div-float v4, v4, v31

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 1086
    .local v4, "horizOffset":I
    sget v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v6, v32, v6

    div-float v6, v6, v31

    move/from16 v31, v8

    .end local v8    # "translationY":F
    .local v31, "translationY":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    .line 1087
    .local v6, "vertOffset":I
    new-instance v8, Landroid/graphics/Rect;

    move/from16 v32, v12

    .end local v12    # "isDeletedItem":Z
    .local v32, "isDeletedItem":Z
    iget v12, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v4

    move/from16 v33, v13

    .end local v13    # "destinationViewIndex":I
    .local v33, "destinationViewIndex":I
    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    move/from16 v35, v14

    .end local v14    # "newItemsComingFromTop":Z
    .local v35, "newItemsComingFromTop":Z
    iget v14, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v4

    move/from16 v36, v4

    .end local v4    # "horizOffset":I
    .local v36, "horizOffset":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    invoke-direct {v8, v12, v13, v14, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v8

    .line 1089
    sget-object v4, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    aput-object v2, v12, v19

    invoke-static {v5, v4, v12}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1091
    .local v4, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    const-string v12, "alpha"

    invoke-static {v12, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1092
    .local v5, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v12, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v8, v13

    aput-object v5, v8, v19

    invoke-static {v12, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1093
    .end local v5    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "vertOffset":I
    .end local v36    # "horizOffset":I
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    goto :goto_a

    .line 1094
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v31    # "translationY":F
    .end local v32    # "isDeletedItem":Z
    .end local v33    # "destinationViewIndex":I
    .end local v35    # "newItemsComingFromTop":Z
    .restart local v8    # "translationY":F
    .restart local v12    # "isDeletedItem":Z
    .restart local v13    # "destinationViewIndex":I
    .restart local v14    # "newItemsComingFromTop":Z
    :cond_10
    move/from16 v31, v8

    move/from16 v32, v12

    move/from16 v33, v13

    move/from16 v35, v14

    const/4 v8, 0x2

    const/4 v13, 0x0

    .end local v8    # "translationY":F
    .end local v12    # "isDeletedItem":Z
    .end local v13    # "destinationViewIndex":I
    .end local v14    # "newItemsComingFromTop":Z
    .restart local v31    # "translationY":F
    .restart local v32    # "isDeletedItem":Z
    .restart local v33    # "destinationViewIndex":I
    .restart local v35    # "newItemsComingFromTop":Z
    iget-object v4, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v6, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v13

    aput-object v2, v8, v19

    invoke-static {v4, v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1098
    .restart local v4    # "anim":Landroid/animation/ObjectAnimator;
    :goto_a
    if-nez v3, :cond_11

    .line 1099
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1100
    const/4 v3, 0x1

    .line 1102
    :cond_11
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    .end local v2    # "endValue":Landroid/graphics/Rect;
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v7    # "startValue":Landroid/graphics/Rect;
    .end local v11    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v23    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v27    # "newPosition":I
    .end local v32    # "isDeletedItem":Z
    .end local v33    # "destinationViewIndex":I
    move-object/from16 v27, v15

    move/from16 v2, v26

    move/from16 v6, v28

    move/from16 v8, v31

    move/from16 v14, v35

    move/from16 v28, v1

    move-object/from16 v1, v22

    goto/16 :goto_6

    .line 1107
    .end local v15    # "listview":Landroid/widget/ListView;
    .end local v22    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v26    # "firstVisiblePos":I
    .end local v31    # "translationY":F
    .end local v35    # "newItemsComingFromTop":Z
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v2, "firstVisiblePos":I
    .local v6, "childCount":I
    .restart local v8    # "translationY":F
    .restart local v14    # "newItemsComingFromTop":Z
    .local v27, "listview":Landroid/widget/ListView;
    .local v28, "left":I
    :cond_12
    move-object/from16 v22, v1

    move/from16 v26, v2

    move/from16 v35, v14

    move-object/from16 v15, v27

    move/from16 v1, v28

    move/from16 v28, v6

    .end local v2    # "firstVisiblePos":I
    .end local v6    # "childCount":I
    .end local v14    # "newItemsComingFromTop":Z
    .end local v27    # "listview":Landroid/widget/ListView;
    .local v1, "left":I
    .restart local v15    # "listview":Landroid/widget/ListView;
    .restart local v22    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v26    # "firstVisiblePos":I
    .local v28, "childCount":I
    .restart local v35    # "newItemsComingFromTop":Z
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1109
    .local v2, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1111
    .local v4, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 1113
    .local v6, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget v7, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/2addr v11, v10

    add-int/2addr v7, v11

    .line 1115
    .local v7, "newY":I
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v13, v1, v29

    iget v14, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v11, v1, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1116
    .local v11, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v13, v1

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v7

    invoke-direct {v12, v1, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1117
    .local v12, "newViewBounds":Landroid/graphics/Rect;
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    iget-object v13, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v14, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move/from16 v23, v1

    move-object/from16 v21, v2

    const/4 v1, 0x2

    .end local v1    # "left":I
    .end local v2    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v21, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v23, "left":I
    new-array v2, v1, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v11, v2, v18

    aput-object v12, v2, v19

    invoke-static {v13, v5, v14, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1120
    .local v2, "animBounds":Landroid/animation/ObjectAnimator;
    if-nez v3, :cond_13

    .line 1121
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1123
    :cond_13
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    .end local v2    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v4    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v6    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v7    # "newY":I
    .end local v11    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v12    # "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v2, v21

    move/from16 v1, v23

    goto :goto_b

    .line 1126
    .end local v21    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v23    # "left":I
    .restart local v1    # "left":I
    .local v2, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :cond_14
    move/from16 v23, v1

    move-object/from16 v21, v2

    .end local v1    # "left":I
    .end local v2    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v21    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v23    # "left":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 1127
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 1129
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1130
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1131
    sget-object v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1132
    new-instance v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1167
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1168
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1170
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postDelayed #3 mAniTimeoutRunnable delay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1172
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
