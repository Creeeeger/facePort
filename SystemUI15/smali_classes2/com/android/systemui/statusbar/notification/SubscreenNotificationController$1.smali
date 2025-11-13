.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->$tmp0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    const-class v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const-string v5, "onEntryViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->$tmp0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const-string v4, "onEntryViewBound"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->$tmp0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v1, :cond_42

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsReplyNotification:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v4, "S.S.N."

    if-eqz v2, :cond_0

    const-string v0, "entryViewBound parent - mIsReplyNotification :"

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "entryViewBound parent :"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    move-result v2

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notiShowBlocked:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    const-string v0, " entryViewBound : show notification is disabled. not showing List"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :cond_1
    if-eqz v2, :cond_42

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isBubbleNotificationSuppressed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "entryViewBound parent - bubble is removed:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyListAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyGroupAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->removeMainHashItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto/16 :goto_20

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->checkBubbleLastHistoryReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "entryViewBound parent - bubble Reply :"

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0, v5}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    :cond_4
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_32

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_13

    iget-boolean v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz v8, :cond_13

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v8, :cond_13

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iput-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v8

    iput-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    const-string v10, "SubscreenNotificationDetailAdapter"

    if-eqz v9, :cond_8

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    const-string v8, "isItemUpdateCompleted - size is not max"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    :goto_0
    move v7, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v6

    :goto_1
    if-ltz v11, :cond_8

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object v14, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    if-eqz v14, :cond_6

    iget-object v15, v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    if-eqz v15, :cond_6

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v8, "isItemUpdateCompleted - size is max - not match text"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-wide v13, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    move-object v15, v8

    iget-wide v7, v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    cmp-long v7, v13, v7

    if-eqz v7, :cond_7

    const-string v7, "isItemUpdateCompleted - size is max - not match PostTime"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    add-int/lit8 v11, v11, -0x1

    move-object v8, v15

    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    move v7, v5

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateSelectNotificationInfo - mIsSendedQuickReply : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    iget-boolean v11, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    const-string v12, ", isItemUpdateCompleted() : "

    invoke-static {v8, v11, v12, v7, v10}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v7, :cond_10

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    if-eqz v7, :cond_10

    iget-boolean v7, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    if-eqz v7, :cond_9

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    iput-boolean v5, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    iput v6, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mCompleteItemUpdateReason:I

    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_9
    iget-object v7, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_d

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    instance-of v11, v11, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-nez v11, :cond_b

    const-string/jumbo v7, "setPrevFirstAndLastHistoryInfo - not SubscreenParentDetailItemViewHolder"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    instance-of v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    if-nez v8, :cond_e

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    if-nez v8, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-lez v8, :cond_e

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    iput v11, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevBodyLayoutHeght:I

    iput v8, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevHistoryCount:I

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    iget-object v7, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v8, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryViewBottomMargin:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setPrevFirstAndLastHistoryInfo - prevFirstHisotoryView params.bottomMargin :"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mPrevBodyLayoutHeght :"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevBodyLayoutHeght:I

    invoke-static {v7, v10, v8}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_5

    :cond_d
    :goto_4
    const-string/jumbo v7, "setPrevFirstAndLastHistoryInfo - value is null"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    const/4 v7, 0x2

    iput v7, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mCompleteItemUpdateReason:I

    goto :goto_3

    :goto_6
    iput-object v7, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    if-eqz v8, :cond_f

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v7, v7}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setSmartReplyResultValue(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_7

    :cond_f
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    :goto_7
    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    if-nez v8, :cond_11

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_11
    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    if-eqz v8, :cond_13

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    const-class v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v9, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v8, :cond_13

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_13
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSupportRemoteView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_19

    :cond_14
    const-string v2, "isUpdateEntry parent : "

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    if-nez v2, :cond_15

    const-string v2, "isUpdateEntry parent - oldEntry is null "

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_15
    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v9, :cond_16

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v9, :cond_16

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v9

    goto :goto_8

    :cond_16
    move-object v9, v7

    :goto_8
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v10

    if-eqz v10, :cond_17

    const-string v2, "isUpdateEntry parent - Group Sumarry: "

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_17
    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_18
    move-object v10, v7

    :goto_9
    if-eqz v9, :cond_19

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_19
    move-object v11, v7

    :goto_a
    invoke-static {v10, v11, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1a

    const-string v8, "isUpdateEntry parent - text Title: "

    invoke-static {v8, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v9, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto/16 :goto_15

    :cond_1a
    if-eqz v8, :cond_1b

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    goto :goto_b

    :cond_1b
    move-object v10, v7

    :goto_b
    if-eqz v9, :cond_1c

    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    goto :goto_c

    :cond_1c
    move-object v11, v7

    :goto_c
    invoke-static {v10, v11, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1d

    const-string v8, "isUpdateEntry parent - text content: "

    invoke-static {v8, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v9, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto/16 :goto_15

    :cond_1d
    if-eqz v8, :cond_1e

    iget-wide v10, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_d

    :cond_1e
    move-object v10, v7

    :goto_d
    if-eqz v9, :cond_1f

    iget-wide v11, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_e

    :cond_1f
    move-object v11, v7

    :goto_e
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    const-string v8, "isUpdateEntry parent - when: "

    invoke-static {v8, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v9, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto/16 :goto_15

    :cond_20
    if-eqz v8, :cond_21

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    goto :goto_f

    :cond_21
    move-object v10, v7

    :goto_f
    if-nez v10, :cond_23

    if-eqz v9, :cond_22

    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    goto :goto_10

    :cond_22
    move-object v10, v7

    :goto_10
    if-nez v10, :cond_25

    :cond_23
    if-eqz v8, :cond_26

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v10, :cond_26

    if-eqz v9, :cond_24

    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    goto :goto_11

    :cond_24
    move-object v11, v7

    :goto_11
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Icon;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    :cond_25
    const-string v8, "isUpdateEntry parent - large Icon: "

    invoke-static {v8, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v9, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_15

    :cond_26
    if-eqz v8, :cond_27

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_12

    :cond_27
    move-object v2, v7

    :goto_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v9, :cond_28

    iget-boolean v2, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_13

    :cond_28
    move-object v2, v7

    :goto_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUnreadMessageCnt:I

    iget-object v8, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    iget-object v12, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v11

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v13, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;

    invoke-direct {v13, v8, v10, v11}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Landroid/app/Notification$Builder;)V

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v12, v8, v13}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    iget v8, v8, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    if-eq v2, v8, :cond_29

    const-string v2, "isUpdateEntry parent - unReadCount: "

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_29
    if-eqz v9, :cond_2a

    iget-object v2, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    goto :goto_14

    :cond_2a
    move-object v2, v7

    :goto_14
    if-eqz v2, :cond_33

    :cond_2b
    :goto_15
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowIsChildInGroup()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v8

    if-nez v8, :cond_2e

    if-nez v2, :cond_2e

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    if-eqz v2, :cond_2c

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    goto :goto_16

    :cond_2c
    move-object v8, v7

    :goto_16
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v2, :cond_2d

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_17

    :cond_2d
    move-object v2, v7

    :goto_17
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateMainListItem isChildGroup : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", addEntry : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", key : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_2e
    move-object v8, v0

    move-object v2, v3

    :goto_18
    if-eqz v2, :cond_33

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v2, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_2f
    :goto_19
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_20

    :cond_30
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_31

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v1, :cond_31

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mIsCustomNotificationUpdated:Ljava/lang/Boolean;

    :cond_31
    if-eqz v0, :cond_42

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_20

    :cond_32
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    :goto_1a
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_34

    goto :goto_1b

    :cond_34
    move v6, v5

    :goto_1b
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    if-eqz v6, :cond_35

    goto :goto_1c

    :cond_35
    const-string/jumbo v0, "return entryViewBound : "

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_36
    :goto_1c
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz v6, :cond_39

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "com.skt.prod.dialer"

    const-string v9, "com.samsung.android.incallui"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string/jumbo v0, "return call Package : "

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_37
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v8, "call"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    const-class v9, Landroid/app/Notification$CallStyle;

    invoke-virtual {v8, v9}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_38

    goto :goto_1d

    :cond_38
    const-string v8, "alarm"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v8

    if-eqz v8, :cond_39

    const-string v0, "fullscreenIntent and this category is not supported in subscreen, so return : "

    const-string v1, ", category = "

    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_39
    :goto_1d
    if-eqz v6, :cond_3b

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3b

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->launchFullscreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto/16 :goto_20

    :cond_3a
    const-string v2, "entryViewBound parent - put fullscreenIntent  :"

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3c

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v0, "entryViewBound GroupSummary :"

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_3c
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_3d

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v2, :cond_3d

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_1e

    :cond_3d
    move-object v2, v7

    :goto_1e
    if-eqz v2, :cond_40

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getTopActivityName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.android.systemui.subscreen.SubHomeActivity"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_3e

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v2, :cond_3e

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v2, :cond_3e

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_1f

    :cond_3e
    move-object v2, v7

    :goto_1f
    invoke-static {v2, v3, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_3f

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v2, :cond_3f

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :cond_3f
    if-eqz v7, :cond_40

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDetailAdapterAutoScrollCurrentPositionByReceive(Landroid/view/View;)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entryViewBound scrollCurrentPosition : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_40
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v0, " return entryViewBound isCoverBriefAllowed - "

    invoke-static {v0, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_41
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showSubscreenNotification()V

    :cond_42
    :goto_20
    return-void
.end method
