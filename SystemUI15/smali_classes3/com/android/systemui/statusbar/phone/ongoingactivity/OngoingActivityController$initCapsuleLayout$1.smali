.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$initCapsuleLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$initCapsuleLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OnClick Ongoing Chip! dataSize : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{OngoingActivityController}"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$initCapsuleLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v6

    const-string v7, "SBOA0008"

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v3, v7, v6}, Lcom/android/systemui/util/NotificationSAUtil;->sendOALog(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " top Data is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$initCapsuleLayout$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-eqz v2, :cond_2

    const-string v0, "createCardController mOngoingCardController != null. return"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    move-object/from16 v18, v5

    move-object v5, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Landroid/view/View;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onStateEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$3;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$3;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->setMediaCardView:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$4;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$4;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->getMediaCardView:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$5;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$5;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->isMediaPlaying:Lkotlin/jvm/functions/Function1;

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->marqueePair:Lkotlin/Pair;

    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_6
    return-void
.end method
