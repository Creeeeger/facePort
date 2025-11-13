.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    sget v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->$r8$clinit:I

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->resetProgressScaleAnimation()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x5a

    int-to-float v4, v4

    const/high16 v5, -0x3ccb0000    # -181.0f

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x0

    new-array v7, v0, [F

    aput v6, v7, v1

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v9, 0x43480000    # 200.0f

    invoke-virtual {v4, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-virtual {v4, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v1

    :goto_4
    if-ge v1, v2, :cond_6

    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v11, :cond_4

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_4

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    goto :goto_5

    :cond_4
    move-object v11, v3

    :goto_5
    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v11, :cond_5

    const v12, 0x3f59999a    # 0.85f

    invoke-virtual {v11, v12}, Landroid/view/View;->setScaleX(F)V

    iget-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/view/View;->setScaleY(F)V

    iget-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    new-instance v11, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;

    invoke-direct {v11, v10, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startSmartReplyListSpringAnimation$runnable$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/dynamicanimation/animation/SpringForce;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    int-to-long v12, v9

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v9, v9, 0x64

    :cond_5
    add-int/2addr v1, v0

    goto :goto_4

    :cond_6
    return-void
.end method
