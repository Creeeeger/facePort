.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;


# instance fields
.field public mPositionControlCnt:I

.field public mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mPositionControlCnt:I

    sub-int v0, p1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v0, :cond_0

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mPositionControlCnt:I

    add-int/2addr v2, v3

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-nez p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSupportRemoteView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    const/4 v1, 0x5

    if-eqz p1, :cond_4

    return v1

    :cond_4
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz p0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    return v1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;

    const-string v1, "SubscreenNotificationGroupAdapter"

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;

    const-string v0, "Group position Item: "

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mPositionControlCnt:I

    sub-int/2addr p2, p0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->updateTitleAndContent()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setUnreadMessageCount(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setGroupAdapterIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListItemTextLayout(Landroid/content/Context;Landroid/view/View;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->initTranslationX()V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    const-string p0, "Group position header: "

    invoke-static {p2, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->useSmallIcon()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    goto/16 :goto_3

    :cond_3
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    const-string p0, "Group position Footer: "

    invoke-static {p2, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeCleared(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setGroupAdapterFooterMargin(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto/16 :goto_3

    :cond_6
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mPositionControlCnt:I

    sub-int/2addr p2, p0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getContentHiddenText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->initTranslationX()V

    goto/16 :goto_3

    :cond_7
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mPositionControlCnt:I

    sub-int/2addr p2, p0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSupportRemoteView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->setItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_8
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_9

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-virtual {p0, p2, v1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object p0

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_9
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    goto/16 :goto_3

    :cond_a
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mPositionControlCnt:I

    sub-int/2addr p2, p0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_b

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->setItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_b
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz p2, :cond_c

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    iput p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mPosition:I

    :cond_c
    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object v4, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mOngoingCoverView:Landroid/widget/RemoteViews;

    :cond_d
    if-eqz v4, :cond_e

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-virtual {v4, v1, v2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingChronometer(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V

    :cond_e
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    :cond_f
    :goto_3
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getGroupAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;

    move-result-object p2

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$OngoingViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
