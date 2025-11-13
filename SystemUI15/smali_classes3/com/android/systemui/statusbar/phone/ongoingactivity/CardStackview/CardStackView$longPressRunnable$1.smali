.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;->PRESS:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    if-eq v2, v3, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$CardSwipeState;

    if-ne v2, v3, :cond_e

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->removeBottomCardShadow()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsDisplay:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->disableTopCardGuts(Z)V

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsDisplay:Z

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const v5, 0x7f0a0c03

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a0c02

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    const-string/jumbo v9, "{OngoingActivityCardStackView}"

    if-nez v8, :cond_8

    if-nez v8, :cond_7

    const-string v8, "addTopCardGuts: notification_guts is not inflated. do inflate() with ViewStub"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-nez v5, :cond_3

    const-string v4, "addTopCardGuts: Cannot find stack_pip_layout"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    sget-object v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-nez v8, :cond_4

    const-string v4, "There is no OA data for GUTS"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    new-instance v8, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0d0262

    invoke-virtual {v8, v10}, Landroid/view/ViewStub;->setLayoutResource(I)V

    const v10, 0x7f0a07ff

    invoke-virtual {v8, v10}, Landroid/view/ViewStub;->setInflatedId(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f0d0393

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsContents:Landroid/view/View;

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setGutsContent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$listener$1;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$listener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const-string v10, "NotificationGuts"

    const-string v11, "mClosedListenerForOngoingActivity added"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, v8, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mClosedListenerForOngoingActivity:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsContents:Landroid/view/View;

    move-object v8, v5

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iput-object v10, v8, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-nez v5, :cond_5

    const-string v4, "addTopCardGuts: Cannot find notification_guts from view"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const v5, 0x7f0a0804

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, "addTopCardGuts: Cannot find notification_guts_container from view"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v8, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-static {v8, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v11

    const-class v5, Landroid/app/INotificationManager;

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/app/INotificationManager;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    invoke-virtual {v5, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {v5, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v14

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v5, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    new-instance v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;

    iget-object v15, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {v8, v5, v4, v15, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addTopCardGuts$onSettingsClick$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    const-class v10, Lcom/android/internal/logging/UiEventLogger;

    sget-object v13, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v13, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Lcom/android/internal/logging/UiEventLogger;

    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v13, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {v10, v13}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v10, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v13, v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v13}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v19, v4, 0x1

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {v4, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {v4, v15, v2}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    invoke-virtual {v4, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsContents:Landroid/view/View;

    move-object v10, v4

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    iget-object v4, v5, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnFavoriteNotifUpdateListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$2;

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->isFavoriteNotif(Ljava/lang/String;)Z

    move-object/from16 v16, v8

    invoke-virtual/range {v10 .. v20}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V

    goto :goto_0

    :cond_7
    const-string v4, "addTopCardGuts: notification_guts is already inflated."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    if-eqz v6, :cond_d

    if-eqz v7, :cond_d

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    if-nez v4, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    const-string v1, "enableTopCardGuts: guts is already enabled"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070b64

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$enableTopCardGuts$gutsDisplayAniListener$1;

    invoke-direct {v4, v7, v1, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$enableTopCardGuts$gutsDisplayAniListener$1;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v7, v5

    float-to-double v5, v6

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    float-to-double v10, v7

    float-to-double v7, v8

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->touchPoint:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    const/4 v10, 0x0

    invoke-static {v6, v8, v7, v10, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v5

    const-wide/16 v6, 0x168

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v6, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->guts:Landroid/view/View;

    if-eqz v4, :cond_c

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_c
    const-string v2, "enableTopCardGuts done"

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v2

    const-string v3, "SBOA0005"

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v1, v3, v2}, Lcom/android/systemui/util/NotificationSAUtil;->sendOALog(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_3

    :cond_d
    :goto_2
    const-string v1, "enableTopCardGuts: fail"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$longPressRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;->INIT:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->gutsControlState:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$GutsControlState;

    return-void
.end method
