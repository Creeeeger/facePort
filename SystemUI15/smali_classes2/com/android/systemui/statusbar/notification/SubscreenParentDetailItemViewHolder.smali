.class public Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final mAppName:Landroid/widget/TextView;

.field public final mBackButton:Landroid/widget/ImageView;

.field public final mBodyLayout:Landroid/widget/LinearLayout;

.field public final mCallBackButton:Landroid/view/View;

.field public final mClearButton:Landroid/view/View;

.field public final mContentLayout:Landroid/widget/LinearLayout;

.field public final mDetailButtonLayout:Landroid/widget/LinearLayout;

.field public final mEditButton:Landroid/widget/TextView;

.field public final mHandler:Landroid/os/Handler;

.field public final mHeaderLayout:Landroid/widget/LinearLayout;

.field public final mIcon:Landroid/widget/ImageView;

.field public mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

.field public final mInitFocusRunnable:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;

.field public final mOpenAppButton:Landroid/view/View;

.field public final mReplyButton:Landroid/widget/TextView;

.field public final mReplyContainer:Landroid/widget/LinearLayout;

.field public final mReplyEmojiButton:Landroid/widget/ImageView;

.field public final mReplyVoiceButton:Landroid/widget/ImageView;

.field public final mReplyVoiceEmojiLayout:Landroid/widget/LinearLayout;

.field public final mReplylayout:Landroid/widget/LinearLayout;

.field public final mSecureIcon:Landroid/widget/ImageView;

.field public final mSmartReplyLayout:Landroid/widget/LinearLayout;

.field public final mTitle:Landroid/widget/TextView;

.field public final mTwoPhoneIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInitFocusRunnable:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;

    const v0, 0x7f0a0c71

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x7f0a0c72

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a07b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a03e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mEditButton:Landroid/widget/TextView;

    const v0, 0x7f0a0297

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/view/View;

    const v1, 0x7f0a0102

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    const v1, 0x7f0a019c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0dc1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTwoPhoneIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a0ada

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a035d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0356

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mDetailButtonLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a023d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mCallBackButton:Landroid/view/View;

    const v2, 0x7f0a09be

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyButton:Landroid/widget/TextView;

    const v2, 0x7f0a09c0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0ba8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0994

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0a09c3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyVoiceEmojiLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a09c2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyVoiceButton:Landroid/widget/ImageView;

    const v2, 0x7f0a09bf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyEmojiButton:Landroid/widget/ImageView;

    const v2, 0x7f0a09c1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-class v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initDetailAdapterBackButton(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBackButton:Landroid/widget/ImageView;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final setIconDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->useSmallIcon()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_0
    return-void
.end method

.method public final startWaitState(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V
    .locals 1

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    move-object p2, p0

    :goto_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final updateClearButtonVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed$1()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateClearButtonVisibility - "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SubscreenParentDetailItemViewHolder"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateShowInAppButtonVisibility()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateShowInAppButtonVisibility - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenParentDetailItemViewHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
