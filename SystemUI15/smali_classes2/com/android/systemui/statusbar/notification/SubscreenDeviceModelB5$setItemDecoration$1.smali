.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $firstTopMargin:I

.field public final synthetic $footerTopMargin:I

.field public final synthetic $horizontalMargin:I

.field public final synthetic $listBetweenMargin:I

.field public final synthetic $ongoingMargin:I

.field public final synthetic $recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;IIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$firstTopMargin:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$footerTopMargin:I

    iput p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$listBetweenMargin:I

    iput p6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$horizontalMargin:I

    iput p7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$ongoingMargin:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget-object p4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p4, :cond_2

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    goto :goto_1

    :cond_2
    move-object p4, v2

    :goto_1
    if-eqz p4, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    instance-of p3, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$firstTopMargin:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$footerTopMargin:I

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$listBetweenMargin:I

    :goto_2
    iput v0, p1, Landroid/graphics/Rect;->top:I

    :goto_3
    if-nez p3, :cond_6

    iget p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$horizontalMargin:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v0

    :goto_4
    if-ltz p2, :cond_8

    if-ge p2, v1, :cond_8

    if-eqz p4, :cond_8

    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_5

    :cond_8
    move-object p2, v2

    :goto_5
    if-ltz p3, :cond_9

    if-ge p3, v1, :cond_9

    if-eqz p4, :cond_9

    sget-object p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    if-eqz p4, :cond_9

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    :cond_9
    const/4 p3, 0x1

    if-eqz v2, :cond_a

    iget-object p4, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result p4

    if-eqz p4, :cond_a

    move p4, p3

    goto :goto_6

    :cond_a
    move p4, v0

    :goto_6
    if-eqz p2, :cond_b

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result p2

    if-eqz p2, :cond_b

    move v0, p3

    :cond_b
    if-eqz p4, :cond_c

    if-nez v0, :cond_c

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;->$ongoingMargin:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_c
    return-void
.end method
