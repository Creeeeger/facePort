.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $duration:J

.field public final synthetic $ephemeral:Z

.field public final synthetic $ignorePreviousValues:Z

.field public final synthetic $interpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic $origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZLandroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    iput-boolean p2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ignorePreviousValues:Z

    iput-object p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$interpolator:Landroid/view/animation/Interpolator;

    iput-wide p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$duration:J

    iput-boolean p6, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ephemeral:Z

    iput-object p7, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    sget-object v7, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    invoke-static {v6, v1, v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_0

    :cond_1
    move/from16 v8, p6

    :goto_0
    sget-object v9, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    invoke-static {v6, v1, v9}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    :cond_2
    move/from16 v10, p7

    :goto_1
    sget-object v11, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    invoke-static {v6, v1, v11}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_2

    :cond_3
    move/from16 v12, p8

    :goto_2
    sget-object v13, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    invoke-static {v6, v1, v13}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_4
    move/from16 v6, p9

    :goto_3
    const v14, 0x7f0a0cf1

    invoke-virtual {v1, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Landroid/animation/ObjectAnimator;

    if-eqz v15, :cond_5

    check-cast v14, Landroid/animation/ObjectAnimator;

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v14

    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->occupiesSpace(IIIII)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-static {v1, v7, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    invoke-static {v1, v9, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    invoke-static {v1, v11, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    invoke-static {v1, v13, v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    return-void

    :cond_7
    iget-object v14, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    iget-boolean v15, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ignorePreviousValues:Z

    if-eqz v15, :cond_8

    move v8, v2

    :cond_8
    if-eqz v15, :cond_9

    move v10, v3

    :cond_9
    if-eqz v15, :cond_a

    move v12, v4

    :cond_a
    if-eqz v15, :cond_b

    move v6, v5

    :cond_b
    if-eqz v14, :cond_c

    sget-object v15, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v16, v15, v16

    packed-switch v16, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto :goto_5

    :pswitch_1
    move/from16 v16, v2

    goto :goto_5

    :pswitch_2
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    goto :goto_5

    :pswitch_3
    add-int v16, v2, v4

    div-int/lit8 v16, v16, 0x2

    :goto_5
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v17, v15, v17

    packed-switch v17, :pswitch_data_1

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_4
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    goto :goto_6

    :pswitch_5
    move/from16 v17, v3

    goto :goto_6

    :pswitch_6
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto :goto_6

    :pswitch_7
    add-int v17, v3, v5

    div-int/lit8 v17, v17, 0x2

    :goto_6
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v18, v15, v18

    packed-switch v18, :pswitch_data_2

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_8
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_7
    move v12, v8

    goto :goto_8

    :pswitch_9
    move v12, v4

    goto :goto_8

    :pswitch_a
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_7

    :pswitch_b
    add-int v8, v2, v4

    div-int/lit8 v8, v8, 0x2

    goto :goto_7

    :goto_8
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v15, v8

    packed-switch v8, :pswitch_data_3

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_c
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_9

    :pswitch_d
    move v6, v5

    goto :goto_9

    :pswitch_e
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_9

    :pswitch_f
    add-int v6, v3, v5

    div-int/lit8 v6, v6, 0x2

    :goto_9
    move/from16 v8, v16

    move/from16 v10, v17

    :cond_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v9, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v13, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v14, v10, v12, v8}, [Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v9, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v13, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v10, v12, v14, v15}, [Lkotlin/Pair;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v7, v6}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-eq v12, v2, :cond_d

    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {v9, v6}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_e

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {v11, v6}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_f

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {v13, v6}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_10

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$interpolator:Landroid/view/animation/Interpolator;

    iget-wide v3, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$duration:J

    iget-boolean v5, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ephemeral:Z

    iget-object v0, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$onAnimationEnd:Ljava/lang/Runnable;

    move-object/from16 p0, p1

    move-object/from16 p1, v10

    move-object/from16 p2, v6

    move-object/from16 p3, v8

    move-object/from16 p4, v2

    move-wide/from16 p5, v3

    move/from16 p7, v5

    move-object/from16 p8, v0

    invoke-static/range {p0 .. p8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
