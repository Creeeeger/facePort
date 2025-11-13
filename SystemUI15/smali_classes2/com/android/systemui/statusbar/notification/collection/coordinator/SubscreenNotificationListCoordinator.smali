.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final bubbleFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;

.field private final bubblesOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final pluginLockListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$pluginLockListener$1;

.field private final pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private pluginLockMode:I

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final subscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->subscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->bubblesOptional:Ljava/util/Optional;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$pluginLockListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$pluginLockListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->pluginLockListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$pluginLockListener$1;

    invoke-interface {p4, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->bubbleFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;

    return-void
.end method

.method public static final synthetic access$getBubblesOptional$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->bubblesOptional:Ljava/util/Optional;

    return-object p0
.end method

.method public static final synthetic access$getSubscreenController$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->subscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    return-object p0
.end method

.method public static final synthetic access$onAfterRenderList(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V

    return-void
.end method

.method public static final synthetic access$setPluginLockMode$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->pluginLockMode:I

    return-void
.end method

.method private final onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->subscreenController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setKeyguardStateWhenAddSubscreenNotificationInfoList(Z)V

    :cond_2
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_9

    iget v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->pluginLockMode:I

    if-eq v7, v5, :cond_9

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v3

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificant()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_7
    if-eqz v3, :cond_8

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-ne v3, v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    :goto_4
    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->pluginLockMode:I

    const-string v7, "onAfterRenderList() isSubScreen = "

    const-string v8, ", pluginLockMode = "

    const-string v9, ", doNotShowOnCover = "

    invoke-static {v7, v0, v8, v2, v9}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SubscreenNotificationListCoordinator"

    invoke-static {v0, v3, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v0

    const-string v2, "S.S.N."

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v0, :cond_2f

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v5, :cond_b

    if-nez v7, :cond_b

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_2f

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_b
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v7, :cond_2f

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v7, :cond_c

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v7, :cond_c

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :goto_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v7, :cond_e

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    :goto_7
    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    if-eqz v12, :cond_f

    const-string/jumbo v12, "updateGroupListArray parent - already group Item  - mainListItem != null : "

    invoke-static {v12, v11, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v12, :cond_10

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v12, :cond_10

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v13, v4

    move v14, v13

    :goto_9
    if-ge v13, v12, :cond_14

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v15, :cond_11

    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v15, :cond_11

    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    if-eqz v15, :cond_11

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_a

    :cond_11
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_12

    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_b

    :cond_12
    const/4 v15, 0x0

    :goto_b
    invoke-static {v15, v11, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_13

    const-string/jumbo v14, "updateGroupListArray parent - already Item - searchItem : "

    invoke-static {v14, v11, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v11, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v14, v5

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_14
    invoke-static {v0, v10}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap$default(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eqz v14, :cond_15

    goto/16 :goto_6

    :cond_15
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v12, :cond_16

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v12, :cond_16

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v12, v10}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v10

    goto :goto_c

    :cond_16
    const/4 v10, 0x0

    :goto_c
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v12, :cond_17

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v12, :cond_17

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    if-eqz v12, :cond_17

    invoke-virtual {v12, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_17
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v10, :cond_18

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v10, :cond_18

    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_18
    const-string/jumbo v10, "updateGroupListArray parent - add Item  : "

    invoke-static {v10, v11, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_1a
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v8, :cond_1b

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v8, :cond_1b

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_e

    :cond_1b
    const/4 v8, 0x0

    :goto_e
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v9, v4

    :goto_f
    if-ge v9, v8, :cond_22

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v10, :cond_1c

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v10, :cond_1c

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_1c

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_10

    :cond_1c
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_1d

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_11

    :cond_1d
    const/4 v10, 0x0

    :goto_11
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v11, :cond_21

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v8, :cond_1e

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v8, :cond_1e

    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v8

    goto :goto_12

    :cond_1e
    const/4 v8, 0x0

    :goto_12
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v12, :cond_1f

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v12, :cond_1f

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    if-eqz v12, :cond_1f

    invoke-virtual {v12, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    :cond_1f
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v8, :cond_20

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v8, :cond_20

    instance-of v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    xor-int/2addr v12, v5

    add-int/2addr v9, v12

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_20
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateGroupListArray parent - update Item  : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v8, v9, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_21
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_22
    :goto_13
    if-eqz v7, :cond_2f

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v7

    if-ne v7, v5, :cond_2f

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v7, :cond_23

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v7, :cond_23

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_14

    :cond_23
    const/4 v7, 0x0

    :goto_14
    if-eqz v7, :cond_2f

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v8, :cond_24

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v8, :cond_24

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    if-eqz v8, :cond_24

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_15

    :cond_24
    const/4 v8, 0x0

    :goto_15
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v9, :cond_25

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v9, :cond_25

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_16

    :cond_25
    const/4 v9, 0x0

    :goto_16
    if-eqz v8, :cond_2f

    if-eqz v9, :cond_2f

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_2f

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v11, v4

    :goto_17
    if-ge v11, v8, :cond_2f

    if-eqz v10, :cond_2f

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v12, :cond_26

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v12, :cond_26

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_18

    :cond_26
    const/4 v12, 0x0

    :goto_18
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x32

    if-ge v12, v13, :cond_2f

    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v12, :cond_27

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v12, :cond_27

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    if-eqz v12, :cond_27

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_19

    :cond_27
    const/4 v12, 0x0

    :goto_19
    if-eqz v12, :cond_28

    iget-object v13, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v13, :cond_28

    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_1a

    :cond_28
    const/4 v13, 0x0

    :goto_1a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v15, v4

    :goto_1b
    if-ge v15, v14, :cond_2b

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_29

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v3, :cond_29

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_29

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v3, :cond_29

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_1c

    :cond_29
    const/4 v3, 0x0

    :goto_1c
    invoke-static {v13, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_1e

    :cond_2a
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    :cond_2b
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_2c

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v3, :cond_2c

    invoke-virtual {v3, v12}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v3

    goto :goto_1d

    :cond_2c
    const/4 v3, 0x0

    :goto_1d
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v12, :cond_2d

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v12, :cond_2d

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    if-eqz v12, :cond_2d

    invoke-virtual {v12, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2d
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_2e

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v3, :cond_2e

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_2e
    add-int/lit8 v10, v10, -0x1

    :goto_1e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_17

    :cond_2f
    :goto_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v7, :cond_30

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_31
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notiShowBlocked:Z

    if-eqz v3, :cond_32

    goto/16 :goto_4a

    :cond_32
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_33

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    goto :goto_21

    :cond_33
    const/4 v3, 0x0

    :goto_21
    if-nez v3, :cond_34

    goto/16 :goto_4a

    :cond_34
    iput v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->bubbleReply:I

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsChangedToFoldState:Z

    if-eqz v6, :cond_36

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsKeyguardStateWhenAddSubscreenNotificationInfoList:Z

    if-eqz v6, :cond_36

    const-string/jumbo v6, "updateMainListArray - changeFoldState"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    if-nez v6, :cond_35

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    :cond_35
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsChangedToFoldState:Z

    :cond_36
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6c

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    if-eqz v6, :cond_37

    goto/16 :goto_46

    :cond_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    :goto_22
    if-ge v9, v3, :cond_5e

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v12, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    iget-object v13, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    if-eqz v12, :cond_38

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_23

    :cond_38
    const/4 v12, 0x0

    :goto_23
    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    if-nez v12, :cond_4d

    const-string v12, "add Item"

    invoke-virtual {v1, v11, v12}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->checkEntryConditionsForNonAddition(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3a

    :cond_39
    :goto_24
    move/from16 v17, v3

    goto/16 :goto_3f

    :cond_3a
    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v12}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v12

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v15

    if-nez v15, :cond_43

    if-nez v12, :cond_43

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v12

    move v15, v4

    :goto_25
    if-ge v15, v12, :cond_42

    sget-object v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v7, :cond_3b

    iget-boolean v5, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    goto :goto_26

    :cond_3b
    move v5, v4

    :goto_26
    if-eqz v5, :cond_41

    iget-object v5, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_3c

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    goto :goto_27

    :cond_3c
    const/4 v4, 0x0

    :goto_27
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string/jumbo v4, "updateMainListArray add Item - already group Item: "

    invoke-static {v4, v13, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v13}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_3d

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_3d

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    goto :goto_28

    :cond_3d
    const/4 v4, 0x0

    :goto_28
    if-eqz v4, :cond_3f

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_29

    :cond_3e
    const/4 v4, 0x1

    goto :goto_2c

    :cond_3f
    :goto_29
    if-eqz v7, :cond_40

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_2a

    :cond_40
    const/4 v4, 0x0

    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateMainListArray add Item - remove old summary because it is empty: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_41
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_25

    :cond_42
    :goto_2b
    const/4 v4, 0x0

    :goto_2c
    if-eqz v4, :cond_43

    goto/16 :goto_24

    :cond_43
    const-string/jumbo v4, "updateMainListArray parent add Item: "

    invoke-static {v4, v13, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v10}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    if-eqz v4, :cond_4c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add - updateMainListArray parent Group child remove Item: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v4

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v4, :cond_48

    sget-object v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v10, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_44

    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v12, :cond_44

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    goto :goto_2e

    :cond_44
    const/4 v12, 0x0

    :goto_2e
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    if-eqz v7, :cond_45

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_45

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v10, :cond_45

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v10

    if-eqz v10, :cond_45

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_2f

    :cond_45
    const/4 v10, 0x0

    :goto_2f
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_46

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    const-string v10, "add - updateMainListArray parent Group child important: "

    invoke-static {v10, v7, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    :goto_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_49
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowIsChildInGroup()Z

    move-result v10

    if-eqz v10, :cond_49

    if-eqz v14, :cond_4a

    move-object v10, v14

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v10, v7}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v10

    if-eqz v10, :cond_4a

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_32

    :cond_4a
    const/4 v10, 0x0

    :goto_32
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap$default(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_31

    :cond_4b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_4c
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_39

    invoke-virtual {v4, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_39

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v13}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_24

    :cond_4d
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_51

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v7

    const/4 v12, 0x0

    :goto_34
    if-ge v12, v7, :cond_51

    sget-object v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v3, :cond_4e

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    move/from16 v16, v7

    goto :goto_35

    :cond_4e
    move/from16 v16, v7

    const/4 v3, 0x0

    :goto_35
    iget-object v7, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-static {v3, v7, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v15, v12, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_4f

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v3, :cond_4f

    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4f
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_50
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_34

    :cond_51
    move/from16 v17, v3

    :goto_36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowIsChildInGroup()Z

    move-result v12

    if-eqz v12, :cond_52

    if-eqz v14, :cond_53

    move-object v12, v14

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v12, v7}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v12

    if-eqz v12, :cond_53

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_38

    :cond_53
    const/4 v12, 0x0

    :goto_38
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_52

    iget-object v12, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v12, :cond_54

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v12, :cond_54

    invoke-virtual {v12, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_54
    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap$default(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_37

    :cond_55
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_56
    iget-boolean v3, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update - updateMainListArray parent Group child remove Item: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v3, :cond_5c

    sget-object v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v7, :cond_57

    iget-boolean v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    goto :goto_3b

    :cond_57
    const/4 v10, 0x0

    :goto_3b
    if-nez v10, :cond_5b

    iget-object v10, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_58

    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v12, :cond_58

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    goto :goto_3c

    :cond_58
    const/4 v12, 0x0

    :goto_3c
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5b

    if-eqz v7, :cond_59

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_59

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v10, :cond_59

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v10

    if-eqz v10, :cond_59

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_3d

    :cond_59
    const/4 v10, 0x0

    :goto_3d
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5a

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    const-string/jumbo v10, "update - updateMainListArray parent Group child important: "

    invoke-static {v10, v7, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_5a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_5b
    :goto_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_5c
    if-eqz v4, :cond_5d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_3f
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v17

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_22

    :cond_5e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5f

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_5f
    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_63

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_40
    const/4 v4, -0x1

    if-ge v4, v3, :cond_63

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v4, :cond_62

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    const-string v9, "removeSubscreenNotificationInfoItem : "

    const-string v10, " >>>>> currentThread : "

    invoke-static {v4, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SubscreenNotificationInfoManager"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v5, :cond_60

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v5, :cond_60

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_60
    if-eqz v7, :cond_61

    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_41

    :cond_61
    const/4 v5, 0x0

    :goto_41
    const-string/jumbo v7, "updateMainListArray parent remove Item: "

    const-string v9, ", index : "

    invoke-static {v4, v7, v5, v9, v2}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    add-int/lit8 v3, v3, -0x1

    goto :goto_40

    :cond_63
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_64
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v7

    if-le v6, v7, :cond_65

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateMainListArray parent add Item last position: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_65
    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_43
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v5, :cond_64

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v5, :cond_64

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_42

    :cond_66
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_74

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v0, :cond_74

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_67

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterAnimator:Landroid/animation/Animator;

    :cond_67
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    if-eqz v2, :cond_74

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->checkRemoveNotification()Z

    move-result v2

    if-nez v2, :cond_68

    goto :goto_45

    :cond_68
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    if-ne v2, v4, :cond_69

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v7, v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x12c

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterAnimator:Landroid/animation/Animator;

    goto :goto_44

    :cond_69
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_44
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_49

    :cond_6a
    :goto_45
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6b

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v5, v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const/4 v9, 0x0

    const-wide/16 v6, 0x12c

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterAnimator:Landroid/animation/Animator;

    goto/16 :goto_49

    :cond_6b
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_49

    :cond_6c
    :goto_46
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    if-eqz v4, :cond_6d

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsUpdatedAllMainList:Z

    :cond_6d
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v4

    if-nez v4, :cond_6e

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    :cond_6e
    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    const-string/jumbo v5, "updateMainListArray allMap - size : "

    const-string v6, ", isEmpty: "

    invoke-static {v5, v3, v6, v4, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6f
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateMainListArray allMap - key : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "allMap"

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->checkEntryConditionsForNonAddition(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    goto :goto_47

    :cond_70
    sget-object v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v5, :cond_71

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    if-eqz v3, :cond_6f

    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v3, :cond_6f

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v5

    if-lez v5, :cond_6f

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    :goto_48
    if-ge v7, v5, :cond_6f

    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v9, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateMainListArray allMap child : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->putMainListArrayHashMap$default(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_73
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_74

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    if-eqz v2, :cond_74

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_74
    :goto_49
    iget v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->bubbleReply:I

    if-nez v0, :cond_75

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mBubbleReplyEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_75
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    if-eqz v0, :cond_76

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsNotificationRemoved:Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListRemoveEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_76
    :goto_4a
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;->bubbleFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$bubbleFilter$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenNotificationListCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnAfterRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;)V

    return-void
.end method
