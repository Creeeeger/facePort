.class public final synthetic Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/complication/ComplicationHostViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/complication/ComplicationHostViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/complication/ComplicationHostViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object v0, v0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/complication/ComplicationHostViewController;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/complication/ComplicationViewModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/systemui/complication/ComplicationViewModel;->mId:Lcom/android/systemui/complication/ComplicationId;

    iget-object v0, v1, Lcom/android/systemui/complication/ComplicationViewModel;->mComplication:Lcom/android/systemui/complication/Complication;

    check-cast v0, Lcom/android/systemui/media/dream/MediaDreamComplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/complication/ComplicationId;

    iget-object v2, v0, Lcom/android/systemui/complication/ComplicationHostViewController;->mLayoutEngine:Lcom/android/systemui/complication/ComplicationLayoutEngine;

    iget-object v2, v2, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not find id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ComplicationLayoutEng"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_0
    iget-object v3, v2, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;

    check-cast v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;

    iget-object v4, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    check-cast v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;

    iget-object v4, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;

    iget-object v9, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v7, v5

    goto :goto_1

    :cond_2
    iget-object v7, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v7, :cond_1

    invoke-virtual {v7, v6}, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->compareTo(Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;)I

    move-result v8

    if-lez v8, :cond_1

    :cond_3
    move-object v6, v7

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v3, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;

    iget-object v5, v6, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    iget-object v4, v4, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v14, v5

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    iget-object v9, v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v7, v10, v9}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    iget-object v15, v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iget v13, v15, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    iget-boolean v12, v15, Lcom/android/systemui/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    iget-object v9, v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    const/4 v11, 0x1

    if-ne v14, v9, :cond_7

    move/from16 v16, v11

    goto :goto_3

    :cond_7
    move/from16 v16, v8

    :goto_3
    new-instance v10, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;

    move-object v9, v10

    move-object v8, v10

    move-object v10, v5

    move-object/from16 p1, v3

    move v3, v11

    move/from16 v11, v16

    move/from16 v16, v12

    move v12, v13

    move-object/from16 v17, v4

    move v4, v13

    move-object v13, v7

    move-object v3, v15

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;ZILandroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/view/View;Z)V

    iget v3, v3, Lcom/android/systemui/complication/ComplicationLayoutParams;->mPosition:I

    invoke-static {v3, v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;->iteratePositions(ILjava/util/function/Consumer;)V

    iget-object v3, v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    iget v3, v3, Lcom/android/systemui/complication/ComplicationLayoutParams;->mConstraint:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_a

    const/4 v8, 0x1

    if-eq v4, v8, :cond_9

    const/4 v8, 0x2

    if-eq v4, v8, :cond_9

    const/4 v8, 0x4

    if-eq v4, v8, :cond_8

    const/16 v8, 0x8

    if-eq v4, v8, :cond_8

    goto :goto_4

    :cond_8
    iput v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    goto :goto_4

    :cond_9
    iput v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    :cond_a
    :goto_4
    iget-object v3, v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v14, v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    const/4 v8, 0x0

    goto :goto_2

    :cond_b
    :goto_5
    iget-object v3, v2, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, v2, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, v2, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object v2, v2, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    iget-object v4, v3, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v2, v6}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Landroid/view/View;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_6
    iget-object v0, v0, Lcom/android/systemui/complication/ComplicationHostViewController;->mComplications:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
