.class final Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $shelfHeight:F

.field final synthetic $stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field F$0:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
            "F",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$shelfHeight:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$shelfHeight:F

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x1

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_1

    if-ne v3, v5, :cond_0

    iget v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->I$0:I

    iget v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->F$0:F

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->Z$0:Z

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$8:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$7:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$6:Ljava/lang/Object;

    check-cast v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$5:Ljava/lang/Object;

    check-cast v13, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$4:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$3:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/SequenceScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v0

    move-object v0, v11

    move-object v11, v14

    const/4 v14, 0x2

    move-object/from16 v21, v10

    move-object v10, v2

    move-object/from16 v2, v21

    move/from16 v22, v9

    move v9, v3

    move/from16 v3, v22

    move-object/from16 v23, v13

    move-object v13, v12

    move-object/from16 v12, v23

    goto/16 :goto_b

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->Z$0:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/sequences/SequenceScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lkotlin/sequences/SequenceScope;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    sget-object v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$childrenSequence$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$childrenSequence$1;

    new-instance v5, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v5, v3, v4}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;)V

    invoke-static {v5, v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v9

    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v5, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->onLockscreen()Z

    move-result v1

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationMinimalismPrototype()V

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;

    iget v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$shelfHeight:F

    invoke-direct {v3, v6, v6, v11, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;-><init>(FFFZ)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$4:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$5:Ljava/lang/Object;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->Z$0:Z

    const/4 v11, 0x1

    iput v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->label:I

    invoke-virtual {v10, v3, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object v3

    if-ne v3, v2, :cond_3

    return-object v2

    :cond_3
    const/4 v3, 0x0

    :goto_0
    move-object v11, v9

    check-cast v11, Ljava/lang/Iterable;

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$stack:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->$shelfHeight:F

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v15, v11

    move-object v11, v4

    move-object v4, v10

    move-object v10, v5

    move-object v5, v8

    move v8, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v3

    move v3, v1

    move-object v1, v9

    move v9, v7

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    const/16 v16, 0x1

    add-int/lit8 v6, v9, 0x1

    if-ltz v9, :cond_12

    move-object/from16 v7, v17

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move/from16 p1, v9

    iget-object v9, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v17, v9

    check-cast v17, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move/from16 v18, p1

    move-object v9, v13

    move-object/from16 v19, v2

    move-object v2, v10

    move-object v10, v7

    move-object/from16 p1, v15

    move-object v15, v11

    move/from16 v11, v18

    move-object v0, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v4

    move-object v4, v13

    move-object v13, v14

    move-object/from16 v20, v0

    move-object v0, v14

    move v14, v3

    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->getSpaceNeeded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;ILcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;

    move-result-object v9

    iget v10, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v11, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;->whenEnoughSpace:F

    add-float/2addr v10, v11

    iput v10, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v10, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$SpaceNeeded;->whenSavingSpace:F

    add-float/2addr v10, v9

    iput v10, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput-object v7, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    move/from16 v10, v18

    if-ne v10, v9, :cond_4

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v4, v0, v7, v9, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->calculateGapAndDividerHeight(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result v9

    add-float/2addr v9, v8

    :goto_2
    if-eqz v20, :cond_e

    instance-of v10, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_5

    move-object v11, v7

    check-cast v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_6

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_7

    iget v7, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v7}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_8

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    if-nez v11, :cond_a

    :goto_7
    move-object/from16 v7, v20

    goto :goto_8

    :cond_a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v12, 0xe

    if-ne v7, v12, :cond_b

    move-object/from16 v7, v20

    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->ongoing:I

    add-int/2addr v11, v10

    iput v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->ongoing:I

    goto :goto_8

    :cond_b
    move-object/from16 v7, v20

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_c

    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->important:I

    add-int/2addr v11, v10

    iput v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->important:I

    goto :goto_8

    :cond_c
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_d

    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->important:I

    add-int/2addr v11, v10

    iput v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->important:I

    goto :goto_8

    :cond_d
    iget v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->other:I

    add-int/2addr v11, v10

    iput v11, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->other:I

    goto :goto_8

    :cond_e
    move-object/from16 v7, v20

    const/4 v10, 0x1

    :goto_8
    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;

    iget v12, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v13, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    if-eqz v7, :cond_f

    iget v14, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->ongoing:I

    if-gt v14, v10, :cond_10

    iget v14, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->important:I

    if-gt v14, v10, :cond_10

    iget v14, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$BucketTypeCounter;->other:I

    if-lez v14, :cond_f

    goto :goto_9

    :cond_f
    const/4 v14, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    move v14, v10

    :goto_a
    invoke-direct {v11, v12, v13, v9, v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$StackHeight;-><init>(FFFZ)V

    move-object v9, v7

    move-object/from16 v12, v17

    move-object/from16 v7, p0

    iput-object v12, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$0:Ljava/lang/Object;

    iput-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$1:Ljava/lang/Object;

    iput-object v5, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$2:Ljava/lang/Object;

    iput-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$3:Ljava/lang/Object;

    iput-object v15, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$4:Ljava/lang/Object;

    iput-object v9, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$5:Ljava/lang/Object;

    iput-object v4, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$6:Ljava/lang/Object;

    iput-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$7:Ljava/lang/Object;

    move-object/from16 v13, p1

    iput-object v13, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->L$8:Ljava/lang/Object;

    iput-boolean v3, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->Z$0:Z

    iput v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->F$0:F

    iput v6, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->I$0:I

    const/4 v14, 0x2

    iput v14, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$computeHeightPerNotificationLimit$1;->label:I

    invoke-virtual {v12, v11, v7}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object v11

    move-object/from16 v10, v19

    if-ne v11, v10, :cond_11

    return-object v10

    :cond_11
    move-object v11, v15

    move-object v15, v2

    move-object v2, v13

    move-object v13, v4

    move-object v4, v12

    move-object v12, v9

    move v9, v6

    :goto_b
    move-object v14, v0

    move-object v0, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v21, v15

    move-object v15, v2

    move-object v2, v10

    move-object/from16 v10, v21

    goto/16 :goto_1

    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
