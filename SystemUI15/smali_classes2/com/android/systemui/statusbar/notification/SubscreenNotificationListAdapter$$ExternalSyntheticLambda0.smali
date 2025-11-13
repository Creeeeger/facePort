.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->checkRemoveNotification()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyClockSubRoomRequest()V

    const-string v1, "SubscreenNotificationInfoManager"

    const-string v2, "clearAllSubscreenNotificaitonInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    sget-object v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeCleared(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setEntryDismissState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeCleared(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
