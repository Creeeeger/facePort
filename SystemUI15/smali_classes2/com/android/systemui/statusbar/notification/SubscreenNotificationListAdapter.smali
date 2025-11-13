.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;


# instance fields
.field public mFooterAnimator:Landroid/animation/Animator;

.field public mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

.field public final mGroupViewHolderArray:Ljava/util/ArrayList;

.field public mIsCustomNotificationUpdated:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mGroupViewHolderArray:Ljava/util/ArrayList;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mIsCustomNotificationUpdated:Ljava/lang/Boolean;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    return-object v0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListAdpaterPosition(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    return v4

    :cond_2
    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    return v0

    :cond_5
    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_a

    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v3, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    array-length v5, v3

    move v6, v1

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_8

    aget-object v8, v3, v6

    invoke-virtual {v8}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_7

    move v7, v4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    const-string v3, "missed_call"

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v7, :cond_9

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    return v0

    :cond_a
    :goto_3
    iget-boolean p1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    const/4 v0, 0x5

    if-eqz p1, :cond_d

    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v2

    if-ne v2, v4, :cond_b

    goto :goto_4

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isOnlyGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_c

    :goto_4
    return v1

    :cond_c
    return v0

    :cond_d
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result p0

    if-eqz p0, :cond_e

    return v0

    :cond_e
    return v1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v0

    if-lez v0, :cond_0

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p2, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object p0

    :cond_1
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->updateTitleAndContent()V

    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setUnreadMessageCount(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setIconView(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;Z)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setRightIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListItemTextLayout(Landroid/content/Context;Landroid/view/View;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p0, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->initTranslationX()V

    goto/16 :goto_d

    :cond_2
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    const/16 v2, 0x8

    if-eqz p2, :cond_5

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->checkRemoveNotification()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_d

    :cond_4
    :goto_1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_d

    :cond_5
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContentNotificationViewHolder;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContentNotificationViewHolder;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContentNotificationViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setIconView(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;Z)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContentNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->initTranslationX()V

    goto/16 :goto_d

    :cond_6
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;

    const-string v3, "SubscreenNotificationListAdapter"

    if-eqz p2, :cond_b

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setIconView(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;Z)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSupportRemoteView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mNormalView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->setItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p0, :cond_7

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mIsCustomNotificationUpdated:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_8
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_9

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->setNormalViewLayout()V

    const-string p0, "CustomHolder onBind - dataViews is null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->setNormalViewLayout()V

    :goto_2
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->initTranslationX()V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mIsCustomNotificationUpdated:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2b

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mIsCustomNotificationUpdated:Ljava/lang/Boolean;

    goto/16 :goto_d

    :cond_b
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    if-eqz p2, :cond_11

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-lez p2, :cond_d

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->setItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p0, :cond_c

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mIsCustomNotificationUpdated:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    :cond_c
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_d
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz p0, :cond_e

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p0, :cond_e

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mGroupViewHolderArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mPosition:I

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_f

    goto/16 :goto_d

    :cond_e
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_f
    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object p0

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_10

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object p0

    :cond_10
    if-eqz p0, :cond_2b

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    const-class v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-virtual {p2, v2, v3, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingChronometer(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V

    goto/16 :goto_d

    :cond_11
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;

    if-eqz p2, :cond_2b

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setIconView(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;Z)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4, v5}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mAppName:Landroid/widget/TextView;

    if-eqz p2, :cond_12

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotiGroupCount:Landroid/widget/TextView;

    if-eqz p2, :cond_15

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMoreNotificationCount()I

    move-result p2

    goto :goto_3

    :cond_13
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_14

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    iput v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    :cond_14
    iget p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    :goto_3
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotiGroupCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz p2, :cond_22

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mGroupViewHolderArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    iput p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mPosition:I

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_16

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    iput v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    :cond_16
    iget p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    const-string/jumbo v4, "setTitleAndContent - child Count : "

    invoke-static {p2, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMoreNotificationCount()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f110018

    invoke-virtual {v0, v3, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotiGroupCount:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_17
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_21

    if-le p2, v0, :cond_21

    iget-object p2, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_18

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setTitleAndContent - child needsRedaction : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-static {p2, v0, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_18
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_4

    :cond_19
    move v6, v1

    goto :goto_5

    :cond_1a
    :goto_4
    move v6, v0

    :goto_5
    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_6

    :cond_1b
    move v0, v1

    :cond_1c
    :goto_6
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, " "

    const-string v7, "\n"

    if-eqz v6, :cond_1d

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1e

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_1d
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    :goto_7
    if-eqz v5, :cond_1f

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    if-nez v6, :cond_20

    if-eqz v0, :cond_21

    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Title : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Content : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMoreShadowIconColor(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result p2

    if-eqz p2, :cond_29

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_29

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_c

    :cond_22
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result p2

    if-eqz p2, :cond_23

    goto/16 :goto_c

    :cond_23
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_24

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_24
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_25

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    iput v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    :cond_25
    iget p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    const-string v4, "addGroupItems - child Count : "

    invoke-static {p2, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_29

    if-le p2, v0, :cond_29

    iget-object p2, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move v0, v1

    :goto_9
    const/4 v3, 0x2

    if-ge v0, v3, :cond_29

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getListAdapterGroupItemResource()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a04ae

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a04ad

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getContentHiddenText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_26
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_27

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_27
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    if-nez v3, :cond_28

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_28
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_29
    :goto_c
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mAppName:Landroid/widget/TextView;

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f11001a

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2a
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->initTranslationX()V

    :cond_2b
    :goto_d
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_1

    check-cast p2, Ljava/lang/String;

    const-string p3, "click"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContentNotificationViewHolder;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getListAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;

    move-result-object p2

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NoNotificationViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NoNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$OngoingViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContentNotificationViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContentNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final updateGroupViewHolderLayout()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mGroupViewHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c2d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mGroupViewHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_0
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    double-to-int v7, v1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    const-string v5, "SubscreenNotificationListAdapter"

    const-string/jumbo v6, "updateGroupViewHolderLayout : isNotUpdatedDumyViewLayout"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v8, v1

    double-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$1;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mPosition:I

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$2;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mGroupViewHolderArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void
.end method
