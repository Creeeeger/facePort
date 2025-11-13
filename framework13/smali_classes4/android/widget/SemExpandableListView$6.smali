.class Landroid/widget/SemExpandableListView$6;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;

.field final synthetic blacklist val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist val$expanded:[Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .line 1316
    iput-object p1, p0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/widget/SemExpandableListView$6;->val$expanded:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 31

    .line 1320
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1322
    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v1

    .line 1323
    .local v1, "childCount":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1324
    iget-object v3, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V

    .line 1325
    iget-object v3, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1326
    return v2

    .line 1329
    :cond_0
    const/16 v3, 0x2bc

    .line 1333
    .local v3, "animationDuration":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v4, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v5}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    .line 1337
    .local v5, "firstVisiblePos":I
    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetLastNonFooterPosition(Landroid/widget/SemExpandableListView;)I

    move-result v6

    .line 1338
    .local v6, "lastValidPos":I
    if-ge v6, v5, :cond_1

    .line 1339
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 1340
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V

    .line 1341
    return v2

    .line 1344
    :cond_1
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v7, v6}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v7

    .line 1345
    .local v7, "lastPosPackedPos":J
    invoke-static {v7, v8}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v9

    .line 1346
    .local v9, "lastGroupId":I
    add-int/lit8 v10, v9, 0x1

    new-array v10, v10, [I

    .line 1347
    .local v10, "groupOffsets":[I
    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    add-int/lit8 v12, v9, 0x1

    new-array v12, v12, [Landroid/graphics/RectF;

    invoke-static {v11, v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)V

    .line 1348
    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    add-int/lit8 v12, v9, 0x1

    new-array v12, v12, [Landroid/widget/SemExpandableListView$ExpandingRect;

    invoke-static {v11, v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmExpandingRects(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)V

    .line 1351
    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v11}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v12}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v12, v13}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1352
    .local v11, "listBottom":I
    iget-object v12, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1353
    .local v12, "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-nez v12, :cond_3

    .line 1355
    invoke-static {v9}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v13

    .line 1356
    .local v13, "lastGroupPosPackedPos":J
    iget-object v15, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1357
    .local v15, "lastVisGroupPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-nez v15, :cond_2

    .line 1358
    iget-object v2, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2, v11}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    move/from16 v16, v5

    goto :goto_0

    .line 1360
    :cond_2
    iget-object v2, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move/from16 v16, v5

    .end local v5    # "firstVisiblePos":I
    .local v16, "firstVisiblePos":I
    iget v5, v15, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    sub-int v5, v11, v5

    invoke-static {v2, v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    .line 1362
    .end local v13    # "lastGroupPosPackedPos":J
    .end local v15    # "lastVisGroupPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :goto_0
    goto :goto_1

    .line 1363
    .end local v16    # "firstVisiblePos":I
    .restart local v5    # "firstVisiblePos":I
    :cond_3
    move/from16 v16, v5

    .end local v5    # "firstVisiblePos":I
    .restart local v16    # "firstVisiblePos":I
    iget-object v2, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget v5, v12, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    sub-int v5, v11, v5

    invoke-static {v2, v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    .line 1366
    :goto_1
    const/4 v2, 0x1

    .line 1368
    .local v2, "allExpanded":Z
    const/4 v5, 0x0

    .local v5, "position":I
    :goto_2
    if-ge v5, v1, :cond_e

    .line 1369
    iget-object v14, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v14, v5}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1371
    .local v14, "child":Landroid/view/View;
    iget-object v15, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v17, v14

    .end local v14    # "child":Landroid/view/View;
    .local v17, "child":Landroid/view/View;
    invoke-virtual {v15, v5}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v13

    .line 1372
    .local v13, "packedPos":J
    iget-object v15, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1374
    .local v15, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    invoke-static {v13, v14}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v18

    if-nez v18, :cond_4

    move/from16 v18, v6

    .end local v6    # "lastValidPos":I
    .local v18, "lastValidPos":I
    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    .line 1375
    invoke-static {v6, v5}, Landroid/widget/SemExpandableListView;->-$$Nest$misHeaderOrFooterPosition(Landroid/widget/SemExpandableListView;I)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    .line 1374
    .end local v18    # "lastValidPos":I
    .restart local v6    # "lastValidPos":I
    :cond_4
    move/from16 v18, v6

    .line 1375
    .end local v6    # "lastValidPos":I
    .restart local v18    # "lastValidPos":I
    :cond_5
    const/4 v6, 0x0

    .line 1376
    .local v6, "isGroup":Z
    :goto_3
    invoke-static {v13, v14}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v19

    .line 1378
    .local v19, "groupPos":I
    move-wide/from16 v20, v7

    .end local v7    # "lastPosPackedPos":J
    .local v20, "lastPosPackedPos":J
    if-eqz v15, :cond_a

    .line 1379
    iget-object v8, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1380
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v8

    iget v7, v15, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    sub-int/2addr v8, v7

    .line 1381
    .local v8, "offset":I
    if-eqz v6, :cond_8

    .line 1382
    aput v8, v10, v19

    .line 1383
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v7

    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    aput-object v22, v7, v19

    .line 1385
    add-int/lit8 v7, v19, 0x1

    move/from16 v22, v11

    move-object/from16 v23, v12

    .end local v11    # "listBottom":I
    .end local v12    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .local v22, "listBottom":I
    .local v23, "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    invoke-static {v7}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v11

    .line 1386
    .local v11, "nextExpGroupPackedPosition":J
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v7, v11, v12}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v7

    .line 1388
    .local v7, "nextExpGroupFlatPos":I
    if-lt v7, v1, :cond_6

    .line 1389
    move/from16 v24, v1

    .end local v1    # "childCount":I
    .local v24, "childCount":I
    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v1

    .local v1, "nextGroupTop":I
    goto :goto_4

    .line 1391
    .end local v24    # "childCount":I
    .local v1, "childCount":I
    :cond_6
    move/from16 v24, v1

    .end local v1    # "childCount":I
    .restart local v24    # "childCount":I
    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v7}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1394
    .local v1, "nextGroupTop":I
    :goto_4
    move/from16 v25, v7

    .end local v7    # "nextExpGroupFlatPos":I
    .local v25, "nextExpGroupFlatPos":I
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->val$expanded:[Z

    aget-boolean v7, v7, v19

    and-int/2addr v2, v7

    .line 1395
    if-nez v7, :cond_7

    .line 1396
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move/from16 v26, v9

    move-object/from16 v9, v17

    move/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "allExpanded":Z
    .local v9, "child":Landroid/view/View;
    .local v17, "allExpanded":Z
    .local v26, "lastGroupId":I
    invoke-static {v7, v9, v2, v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    .line 1397
    new-instance v2, Landroid/graphics/RectF;

    iget v7, v15, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    int-to-float v7, v7

    move-wide/from16 v27, v11

    .end local v11    # "nextExpGroupPackedPosition":J
    .local v27, "nextExpGroupPackedPosition":J
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    int-to-float v11, v11

    iget v12, v15, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    int-to-float v12, v12

    move-wide/from16 v29, v13

    .end local v13    # "packedPos":J
    .local v29, "packedPos":J
    int-to-float v13, v1

    invoke-direct {v2, v7, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1398
    .local v2, "endRect":Landroid/graphics/RectF;
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmExpandingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v7

    new-instance v11, Landroid/widget/SemExpandableListView$ExpandingRect;

    iget v12, v15, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    iget-object v13, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v13}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v13

    aget-object v13, v13, v19

    invoke-direct {v11, v12, v2, v13}, Landroid/widget/SemExpandableListView$ExpandingRect;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v11, v7, v19

    goto :goto_5

    .line 1395
    .end local v26    # "lastGroupId":I
    .end local v27    # "nextExpGroupPackedPosition":J
    .end local v29    # "packedPos":J
    .local v2, "allExpanded":Z
    .local v9, "lastGroupId":I
    .restart local v11    # "nextExpGroupPackedPosition":J
    .restart local v13    # "packedPos":J
    .local v17, "child":Landroid/view/View;
    :cond_7
    move/from16 v26, v9

    move-wide/from16 v27, v11

    move-wide/from16 v29, v13

    move-object/from16 v9, v17

    move/from16 v17, v2

    .line 1401
    .end local v1    # "nextGroupTop":I
    .end local v2    # "allExpanded":Z
    .end local v11    # "nextExpGroupPackedPosition":J
    .end local v13    # "packedPos":J
    .end local v25    # "nextExpGroupFlatPos":I
    .local v9, "child":Landroid/view/View;
    .local v17, "allExpanded":Z
    .restart local v26    # "lastGroupId":I
    .restart local v29    # "packedPos":J
    :goto_5
    move/from16 v2, v17

    goto :goto_6

    .line 1381
    .end local v22    # "listBottom":I
    .end local v23    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v24    # "childCount":I
    .end local v26    # "lastGroupId":I
    .end local v29    # "packedPos":J
    .local v1, "childCount":I
    .restart local v2    # "allExpanded":Z
    .local v9, "lastGroupId":I
    .local v11, "listBottom":I
    .restart local v12    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v13    # "packedPos":J
    .local v17, "child":Landroid/view/View;
    :cond_8
    move/from16 v24, v1

    move/from16 v26, v9

    move/from16 v22, v11

    move-object/from16 v23, v12

    move-wide/from16 v29, v13

    move-object/from16 v9, v17

    .line 1401
    .end local v1    # "childCount":I
    .end local v11    # "listBottom":I
    .end local v12    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v13    # "packedPos":J
    .end local v17    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    .restart local v22    # "listBottom":I
    .restart local v23    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v24    # "childCount":I
    .restart local v26    # "lastGroupId":I
    .restart local v29    # "packedPos":J
    :goto_6
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    iget v7, v15, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    if-ne v1, v7, :cond_9

    const/4 v7, 0x1

    goto :goto_7

    .line 1403
    :cond_9
    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1404
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v11, v7, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v11, v13

    invoke-static {v9, v1, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1405
    .local v1, "translateAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    .end local v1    # "translateAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "offset":I
    goto :goto_7

    .line 1408
    .end local v22    # "listBottom":I
    .end local v23    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v24    # "childCount":I
    .end local v26    # "lastGroupId":I
    .end local v29    # "packedPos":J
    .local v1, "childCount":I
    .local v9, "lastGroupId":I
    .restart local v11    # "listBottom":I
    .restart local v12    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v13    # "packedPos":J
    .restart local v17    # "child":Landroid/view/View;
    :cond_a
    move/from16 v24, v1

    move/from16 v26, v9

    move/from16 v22, v11

    move-object/from16 v23, v12

    move-wide/from16 v29, v13

    move-object/from16 v9, v17

    const/4 v7, 0x1

    .end local v1    # "childCount":I
    .end local v11    # "listBottom":I
    .end local v12    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v13    # "packedPos":J
    .end local v17    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    .restart local v22    # "listBottom":I
    .restart local v23    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v24    # "childCount":I
    .restart local v26    # "lastGroupId":I
    .restart local v29    # "packedPos":J
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    .line 1411
    :cond_b
    if-nez v6, :cond_c

    .line 1417
    new-instance v1, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v1, v9}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1418
    .local v1, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v8, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostExpandCollapseChildViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1420
    iget-object v8, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    aget v11, v10, v19

    neg-int v11, v11

    invoke-static {v8, v11, v1}, Landroid/widget/SemExpandableListView;->-$$Nest$mcreateViewSnapshotAnimationReverse(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1422
    .local v8, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1411
    .end local v1    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v7, "How on Earth this is possible?"

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1368
    .end local v6    # "isGroup":Z
    .end local v19    # "groupPos":I
    .end local v29    # "packedPos":J
    :cond_d
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    move-wide/from16 v7, v20

    move/from16 v11, v22

    move-object/from16 v12, v23

    move/from16 v1, v24

    move/from16 v9, v26

    goto/16 :goto_2

    .end local v15    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v18    # "lastValidPos":I
    .end local v20    # "lastPosPackedPos":J
    .end local v22    # "listBottom":I
    .end local v23    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v24    # "childCount":I
    .end local v26    # "lastGroupId":I
    .local v1, "childCount":I
    .local v6, "lastValidPos":I
    .local v7, "lastPosPackedPos":J
    .local v9, "lastGroupId":I
    .restart local v11    # "listBottom":I
    .restart local v12    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_e
    move/from16 v24, v1

    move/from16 v18, v6

    move-wide/from16 v20, v7

    move/from16 v26, v9

    move/from16 v22, v11

    move-object/from16 v23, v12

    .line 1427
    .end local v1    # "childCount":I
    .end local v5    # "position":I
    .end local v6    # "lastValidPos":I
    .end local v7    # "lastPosPackedPos":J
    .end local v9    # "lastGroupId":I
    .end local v11    # "listBottom":I
    .end local v12    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v18    # "lastValidPos":I
    .restart local v20    # "lastPosPackedPos":J
    .restart local v22    # "listBottom":I
    .restart local v23    # "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v24    # "childCount":I
    .restart local v26    # "lastGroupId":I
    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 1429
    .local v1, "viewSnapshotsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    if-ge v5, v1, :cond_f

    .line 1430
    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1432
    .local v6, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v8

    invoke-static {v7, v8, v6}, Landroid/widget/SemExpandableListView;->-$$Nest$mcreateViewSnapshotAnimation(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1434
    .local v7, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    iget-object v8, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    .end local v6    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v7    # "animBounds":Landroid/animation/ObjectAnimator;
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1438
    .end local v5    # "i":I
    :cond_f
    new-instance v5, Landroid/widget/SemExpandableListView$6$1;

    invoke-direct {v5, v0}, Landroid/widget/SemExpandableListView$6$1;-><init>(Landroid/widget/SemExpandableListView$6;)V

    .line 1452
    .local v5, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v2, :cond_10

    .line 1455
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1456
    const/4 v6, 0x0

    return v6

    .line 1458
    :cond_10
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1459
    .local v6, "anim":Landroid/animation/ValueAnimator;
    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v7, v7, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1460
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1463
    .local v7, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1464
    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1465
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1466
    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1467
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1468
    iget-object v8, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->clear()V

    .line 1469
    const/4 v8, 0x0

    return v8

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
