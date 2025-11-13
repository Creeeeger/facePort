.class Landroid/widget/SemExpandableListView$5;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;

.field final synthetic blacklist val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist val$groupPos:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .line 1168
    iput-object p1, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 23

    .line 1172
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1174
    iget-object v1, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v1

    .line 1175
    .local v1, "childCount":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1176
    iget-object v3, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V

    .line 1177
    iget-object v3, v0, Landroid/widget/SemExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1178
    return v2

    .line 1181
    :cond_0
    iget v3, v0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    .line 1182
    .local v3, "expGroupPackedPosition":J
    iget v5, v0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    add-int/2addr v5, v2

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    .line 1183
    .local v5, "nextExpGroupPackedPosition":J
    iget-object v7, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v7

    .line 1184
    .local v7, "expGroupFlatPos":I
    iget-object v8, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v8, v5, v6}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v8

    .line 1186
    .local v8, "nextExpGroupFlatPos":I
    iget-object v9, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v9}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    .line 1187
    .local v9, "firstVisiblePos":I
    iget-object v10, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    sub-int v11, v7, v9

    invoke-virtual {v10, v11}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1188
    .local v10, "expandedGroup":Landroid/view/View;
    if-nez v10, :cond_1

    .line 1191
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startExpandAnimation() groupPos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", firstPos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", expGroupFlatPos="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v11, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V

    .line 1195
    iget-object v11, v0, Landroid/widget/SemExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 1196
    return v2

    .line 1199
    :cond_1
    iget-object v11, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    sub-int v12, v8, v9

    invoke-virtual {v11, v12}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1201
    .local v11, "nextExpandedGroup":Landroid/view/View;
    if-nez v11, :cond_2

    .line 1202
    iget-object v12, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v12}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v12

    iget-object v13, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v13}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v2

    invoke-virtual {v13, v14}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1203
    .local v12, "listBottom":I
    iget-object v13, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v14

    sub-int v14, v12, v14

    invoke-static {v13, v14}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    .line 1204
    .end local v12    # "listBottom":I
    goto :goto_0

    .line 1205
    :cond_2
    iget-object v12, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    .line 1208
    :goto_0
    iget-object v12, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Landroid/graphics/RectF;->left:F

    .line 1209
    iget-object v12, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v12

    iget-object v14, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v14}, Landroid/widget/SemExpandableListView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 1210
    iget-object v12, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v14

    int-to-float v14, v14

    iput v14, v12, Landroid/graphics/RectF;->top:F

    .line 1211
    iget-object v12, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v12

    iget-object v14, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v14}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->top:F

    iput v14, v12, Landroid/graphics/RectF;->bottom:F

    .line 1213
    iget-object v12, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v12}, Landroid/widget/SemExpandableListView;->getExpandCollapseDuration()I

    move-result v12

    .line 1217
    .local v12, "animationDuration":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v14, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    const/16 v16, 0x0

    if-ge v15, v1, :cond_9

    .line 1221
    add-int v13, v15, v9

    .line 1222
    .local v13, "position":I
    iget-object v2, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2, v15}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1224
    .local v2, "child":Landroid/view/View;
    move/from16 v17, v1

    .end local v1    # "childCount":I
    .local v17, "childCount":I
    iget-object v1, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    move-wide/from16 v18, v3

    .end local v3    # "expGroupPackedPosition":J
    .local v18, "expGroupPackedPosition":J
    invoke-virtual {v1, v13}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v3

    .line 1225
    .local v3, "packedPos":J
    iget-object v1, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1227
    .local v1, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-eqz v1, :cond_4

    .line 1228
    move-wide/from16 v20, v5

    .end local v5    # "nextExpGroupPackedPosition":J
    .local v20, "nextExpGroupPackedPosition":J
    iget-object v5, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1229
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v1, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    if-ne v5, v6, :cond_3

    move-object/from16 v22, v1

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1231
    :cond_3
    iget-object v5, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1232
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v22, v1

    const/4 v6, 0x1

    .end local v1    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .local v22, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    new-array v1, v6, [F

    const/4 v6, 0x0

    aput v6, v1, v16

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1233
    .local v1, "translateAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    .end local v1    # "translateAnim":Landroid/animation/ObjectAnimator;
    const/4 v6, 0x0

    goto :goto_3

    .line 1236
    .end local v20    # "nextExpGroupPackedPosition":J
    .end local v22    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .local v1, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v5    # "nextExpGroupPackedPosition":J
    :cond_4
    move-object/from16 v22, v1

    move-wide/from16 v20, v5

    .end local v1    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v5    # "nextExpGroupPackedPosition":J
    .restart local v20    # "nextExpGroupPackedPosition":J
    .restart local v22    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    .line 1238
    :cond_5
    iget-object v1, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1, v13}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetFlatPositionForConnector(Landroid/widget/SemExpandableListView;I)I

    move-result v1

    .line 1239
    .local v1, "adjustedPosition":I
    iget-object v5, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v5

    .line 1240
    .local v5, "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    invoke-virtual {v5}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v5, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v6, v6, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move/from16 v16, v1

    .end local v1    # "adjustedPosition":I
    .local v16, "adjustedPosition":I
    iget v1, v0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    if-ne v6, v1, :cond_6

    iget-object v1, v5, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v1, v1, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_6

    .line 1247
    new-instance v1, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v1, v2}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1248
    .local v1, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v6, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostExpandCollapseChildViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1240
    .end local v1    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .end local v16    # "adjustedPosition":I
    .local v1, "adjustedPosition":I
    :cond_7
    move/from16 v16, v1

    const/4 v6, 0x0

    .line 1251
    .end local v1    # "adjustedPosition":I
    .restart local v16    # "adjustedPosition":I
    :goto_2
    invoke-virtual {v5}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_3

    .line 1236
    .end local v5    # "pos":Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .end local v16    # "adjustedPosition":I
    :cond_8
    const/4 v6, 0x0

    .line 1220
    .end local v3    # "packedPos":J
    .end local v13    # "position":I
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move v13, v6

    move/from16 v1, v17

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    const/4 v2, 0x1

    goto/16 :goto_1

    .end local v2    # "child":Landroid/view/View;
    .end local v17    # "childCount":I
    .end local v18    # "expGroupPackedPosition":J
    .end local v20    # "nextExpGroupPackedPosition":J
    .end local v22    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .local v1, "childCount":I
    .local v3, "expGroupPackedPosition":J
    .local v5, "nextExpGroupPackedPosition":J
    :cond_9
    move/from16 v17, v1

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 1255
    .end local v1    # "childCount":I
    .end local v3    # "expGroupPackedPosition":J
    .end local v5    # "nextExpGroupPackedPosition":J
    .end local v15    # "i":I
    .restart local v17    # "childCount":I
    .restart local v18    # "expGroupPackedPosition":J
    .restart local v20    # "nextExpGroupPackedPosition":J
    iget-object v1, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    const/4 v2, 0x1

    invoke-static {v1, v10, v2, v12}, Landroid/widget/SemExpandableListView;->-$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    .line 1257
    iget-object v1, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 1259
    .local v1, "viewSnapshotsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_a

    .line 1260
    iget-object v3, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1262
    .local v3, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v4, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v5

    invoke-static {v4, v5, v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mcreateViewSnapshotAnimation(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1264
    .local v4, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    iget-object v5, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    .end local v3    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v4    # "animBounds":Landroid/animation/ObjectAnimator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1268
    .end local v2    # "i":I
    :cond_a
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1269
    .local v2, "anim":Landroid/animation/ValueAnimator;
    iget-object v3, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v3, v3, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1270
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1273
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v14}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1274
    int-to-long v4, v12

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1275
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1276
    new-instance v4, Landroid/widget/SemExpandableListView$5$1;

    invoke-direct {v4, v0}, Landroid/widget/SemExpandableListView$5$1;-><init>(Landroid/widget/SemExpandableListView$5;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1289
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1290
    iget-object v4, v0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 1291
    return v16

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
