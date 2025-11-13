.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $height:I

.field public final synthetic $left:F

.field public final synthetic $top:F

.field public final synthetic $width:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;IIFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$width:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$height:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$left:F

    iput p5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$top:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    const-string/jumbo v1, "{OngoingExpandedPipController}"

    const-string v2, "mainUIHandler.post "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$left:F

    iget v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$top:F

    iget v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$width:I

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;FFI)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$2;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$width:I

    iget v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->$height:I

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsDisplay:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->disableTopCardGuts(Z)V

    :cond_0
    iput v4, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingWidth:I

    iput v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingHeight:I

    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v5, Landroid/transition/ChangeBounds;

    invoke-direct {v5}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    const-wide/16 v8, 0x28a

    invoke-virtual {v4, v8, v9}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseRootInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v6}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    new-instance v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$1;

    invoke-direct {v6, v3, v2, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v6}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->sceneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    new-instance v8, Landroid/transition/Scene;

    const v9, 0x7f0a0c03

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v8, v6, v10}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v10, Landroid/transition/Scene;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {v10, v6, v9}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->sceneList:Ljava/util/ArrayList;

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->sceneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v3, 0x1

    const/4 v9, 0x0

    if-ltz v3, :cond_a

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/Scene;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardBg()I

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getChipBg(I)I

    move-result v10

    sget-object v11, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    move v12, v5

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v12

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipView:Landroid/widget/RemoteViews;

    if-eqz v12, :cond_2

    move v12, v7

    :goto_2
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v13

    if-le v13, v7, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v13

    if-ne v3, v13, :cond_4

    if-eqz v12, :cond_4

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    const/16 v13, 0xff

    if-ge v12, v13, :cond_4

    int-to-float v12, v12

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v13

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v14

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v12, v13, v14, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    :cond_4
    invoke-virtual {v2, v10, v3, v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->colorTransition(IIZ)V

    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v12, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingWidth:I

    iput v12, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    if-le v12, v7, :cond_5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070c20

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iget v13, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingWidth:I

    sub-int/2addr v13, v12

    iput v13, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_5
    invoke-virtual {v6}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v13

    if-eq v3, v13, :cond_6

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getCardInitialScale(I)F

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setX(F)V

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setY(F)V

    :cond_6
    invoke-virtual {v6}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v12

    const v13, 0x7f0a08e8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const-string/jumbo v14, "{OngoingActivityCardStackView}"

    if-eqz v12, :cond_9

    instance-of v15, v12, Landroid/view/ViewGroup;

    if-eqz v15, :cond_9

    const v15, 0x7f0a03d6

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/widget/FrameLayout;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v15

    if-lez v15, :cond_9

    invoke-virtual {v12, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v15, v12, Landroid/widget/Chronometer;

    if-nez v15, :cond_9

    instance-of v15, v12, Landroid/widget/TextView;

    if-eqz v15, :cond_9

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_9

    iget-boolean v11, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz v11, :cond_9

    iget-object v11, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    if-eqz v11, :cond_8

    move-object v15, v12

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_4

    :cond_8
    move v11, v5

    :goto_4
    if-nez v11, :cond_9

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v15, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " change chip text "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mExpandedChipText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-virtual {v6}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v9, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingHeight:I

    invoke-static {v5, v7, v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeLayoutSize(Landroid/view/View;II)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;

    invoke-direct {v5, v6, v2, v10, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$collapseAnimation$2$3;-><init>(Landroid/transition/Scene;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Lkotlin/jvm/internal/Ref$IntRef;I)V

    invoke-virtual {v6, v5}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isRunningCollapseAnimation:Z

    invoke-static {v6, v4}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    const-string v5, "TransitionManager.go(sceneCollapse, transition) "

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v3

    move v3, v8

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v9

    :cond_b
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->transitionLaunched:Z

    return-void
.end method
