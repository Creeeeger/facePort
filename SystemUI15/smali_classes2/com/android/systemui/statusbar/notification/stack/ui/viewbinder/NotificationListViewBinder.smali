.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final configuration:Lcom/android/systemui/common/ui/ConfigurationState;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final hiderTracker:Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;

.field public final hunBinder:Lcom/android/systemui/statusbar/notification/ui/viewbinder/HeadsUpNotificationViewBinder;

.field public final iconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final nicBinder:Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;

.field public final notificationActivityStarter:Ljavax/inject/Provider;

.field public final shelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field public final silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public final viewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/notification/ui/viewbinder/HeadsUpNotificationViewBinder;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Ljava/util/Optional;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;",
            "Lcom/android/systemui/common/ui/ConfigurationState;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/statusbar/notification/ui/viewbinder/HeadsUpNotificationViewBinder;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLogger;",
            ">;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;",
            "Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;",
            "Lcom/android/systemui/statusbar/NotificationShelfManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->hiderTracker:Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->iconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->nicBinder:Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->notificationActivityStarter:Ljavax/inject/Provider;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->viewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->shelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    return-void
.end method

.method public static final access$bindLogger(Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;Lkotlin/coroutines/Continuation;)Lkotlin/Unit;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindLogger$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindLogger$1;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindLogger$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindLogger$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindLogger$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindLogger$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindLogger$1;->result:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget p1, v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindLogger$1;->label:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsLiveDataStoreRefactor()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final bindWhileAttached(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->shelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0d03c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iput-object v1, v5, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mKeyguardNotiExpandListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v5, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v2, v5, Lcom/android/systemui/statusbar/NotificationShelf;->mRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShelfManager;

    iput-object v1, v5, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iput-object v5, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2, v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    const v3, 0x7f0a07f3

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/animation/view/LaunchableTextView;

    iput-object v3, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    const v3, 0x7f0a0296

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/animation/view/LaunchableTextView;

    iput-object v3, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    const v3, 0x7f0a0824

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    const v3, 0x7f0a02d1

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v3, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mNotificationIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateResources()V

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->statusBarState:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfLayout()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateShelfTextArea()V

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    const/4 v3, 0x4

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/systemui/animation/view/LaunchableTextView;->setVisibility(I)V

    :goto_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/systemui/animation/view/LaunchableTextView;->setVisibility(I)V

    :goto_4
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mShelfTextArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/android/systemui/statusbar/NotificationShelfManager$shelf$1$1;

    invoke-direct {v2, v5}, Lcom/android/systemui/statusbar/NotificationShelfManager$shelf$1$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationShelf;->updateResources$3()V

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mClearAllButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateAccessibility()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationShelfManager;->mSettingButton:Lcom/android/systemui/animation/view/LaunchableTextView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindWhileAttached$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder$bindWhileAttached$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/NotificationShelf;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
