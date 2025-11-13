.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# instance fields
.field public final linearLayoutManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

.field public mHasUnreadNoti:Z

.field public mIsInNotiRoom:Z

.field public mIsScrollByMe:Z

.field public mIsShownDetail:Z

.field public mIsShownGroup:Z

.field public mMainView:Landroid/view/View;

.field public final mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

.field public final mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

.field public final mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field public final mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

.field public mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

.field public final mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

.field public mRecyclerViewFirstVisibleItemPosition:I

.field public mRecyclerViewItemSelectKey:Ljava/lang/String;

.field public mRecyclerViewLastVisibleItemPosition:I

.field public final mRecyclerViewScrollListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

.field public final mRemoteInputEmojiActionBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;

.field public final mRemoteInputVoiceActionBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;

.field public mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

.field public final mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

.field public final mSubscreenMainLayout:Landroid/widget/LinearLayout;

.field public final mUnreadNotificationList:Ljava/util/ArrayList;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static -$$Nest$mreturnRemoteInput(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "open"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p3, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkRemoteInputRequest(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v0, "send"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-class p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyNotification(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    const-string p3, "SubscreenNotificationDetailAdapter"

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSvoiceEmojiClicked:Z

    const/16 v0, 0x12c

    if-eqz p2, :cond_1

    const-string p2, " hide notification after svoice/emoji reply"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p3, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string p2, ""

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-string p2, " remove notification by call back"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    goto :goto_0

    :cond_2
    const-string p1, " remove notification, but selection holder is null."

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    goto :goto_1

    :cond_3
    const-string p1, "permissionCheck"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNeedToUnlock:Z

    goto :goto_1

    :cond_4
    const-string p1, "dismiss"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    :cond_5
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsScrollByMe:Z

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScrollListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->linearLayoutManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$4;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d04af

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    const v2, 0x7f0a0c73

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderView(Landroid/widget/LinearLayout;)V

    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator_manager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibratorManager;

    invoke-virtual {v1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mVibrator:Landroid/os/Vibrator;

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Landroid/os/Vibrator;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Landroid/os/Vibrator;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initRecyclerView()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    sget-object v4, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.action.RETURN_REMOTE_INPUT"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.android.permission.RETURN_REMOTE_INPUT"

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v6, p0

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.action.RETURN_REMOTE_INPUT_VOICE"

    invoke-direct {v9, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v10, "com.samsung.android.permission.RETURN_REMOTE_INPUT_VOICE"

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-object v7, v0

    move-object v8, p0

    invoke-virtual/range {v6 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public static getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    new-instance p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;-><init>()V

    sput-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    return-object p0
.end method


# virtual methods
.method public final getBixbyNotificationVisible(Ljava/lang/String;)Z
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gt v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_1
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public final hideDetailNotification()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideDetailNotification mIsShownGroup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenSubRoomNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->hideGroupNotification()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setListAdpater()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->scrollToSelectedPosition()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    :cond_3
    return-void
.end method

.method public final hideGroupNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v0, :cond_0

    const-string v0, "SubscreenSubRoomNotification"

    const-string v1, "hideGroupNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setListAdpater()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setShownGroup(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->scrollToSelectedPosition()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    :cond_0
    return-void
.end method

.method public final initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final initData()V
    .locals 5

    const-string v0, "SubscreenSubRoomNotification"

    const-string v1, "initData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_GHOST_NOTIFICATION:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->hideDetailNotif()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->buildList()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setShownGroup(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mLayoutDirection:I

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSimpleItemTouchCallBack:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

    const/16 v4, 0x8

    if-ne v2, v3, :cond_1

    const/4 v2, 0x4

    iput v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    goto :goto_0

    :cond_1
    iput v4, v1, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setListAdpater()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateContentScroll()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->releaseSmartReply()V

    return-void
.end method

.method public final initRecyclerView()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScrollListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mOnItemTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne v4, v3, :cond_0

    iput-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    const v2, 0x7f0a081c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->linearLayoutManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    const/4 v3, 0x7

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCoverscreenShowNotificationTip()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SubscreenSubRoomNotification"

    const-string v3, "initTipData"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setListAdpater()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mOnItemTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    instance-of v3, v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v3, :cond_3

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    iput-boolean v2, v1, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setItemDecoration(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final notifyClockSubRoomRequest()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v0, :cond_0

    const-string v0, "SubscreenSubRoomNotification"

    const-string v1, "notifyClockSubRoomRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "focusRequired"

    const-string v2, "clock"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final notifyNotificationSubRoomRequest()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v0, :cond_0

    const-string v0, "SubscreenSubRoomNotification"

    const-string v1, "notifyNotificationSubRoomRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "focusRequired"

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onCloseFinished()V
    .locals 3

    const-string v0, "onCloseFinished"

    const-string v1, "SubscreenSubRoomNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCoverscreenShowNotificationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "initTipData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initData()V

    :goto_0
    const-class p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final onOpenStarted()V
    .locals 3

    const-string v0, "SubscreenSubRoomNotification"

    const-string v1, "onOpenStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->buildList()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f130d3a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final removeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "STATE_UNREAD_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "hasUnread"

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_0
    const-string v0, "STATE_POPUP_DISMISSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SubscreenSubRoomNotification"

    if-eqz v0, :cond_1

    const-string p1, "request() STATE_POPUP_DISMISSED "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    goto :goto_0

    :cond_1
    const-string v0, "STATE_BIO_POPUP_CANCELED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "request() STATE_BIO_POPUP_CANCELED "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initKeyguardActioninfo()V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public final scrollToSelectedPosition()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsScrollByMe:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    xor-int/2addr v0, v2

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    if-eqz v1, :cond_2

    add-int/2addr v5, v0

    :cond_2
    move v4, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public final setListAdpater()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCoverscreenShowNotificationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    return-void
.end method

.method public final showDetailNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showDetailNotification key : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenSubRoomNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initSmartReplyStatus()V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateMainHeaderViewVisibility(I)V

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDimOnMainBackground(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final startReplyActivity(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 12

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-ne v5, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "display: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenSubRoomNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v4, :cond_4

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    if-ne p1, v3, :cond_2

    const-string/jumbo p1, "samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH"

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "locale"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputMaxLength:I

    const-string v6, "maxLength"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputIsSms:Z

    const-string v6, "isSms"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputSignature:Ljava/lang/String;

    const-string/jumbo v6, "signature"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "voice started  ml : "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputMaxLength:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputIsSms:Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " s : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputSignature:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string p1, "honeyboard://cover-emoticon"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.samsung.android.honeyboard.intent.action.COVER_EMOTICON"

    invoke-direct {v4, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "emoji started "

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move-object v8, v4

    const/high16 p1, 0x10800000

    invoke-virtual {v8, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "key"

    invoke-virtual {v8, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/high16 v9, 0xc000000

    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "runOnCover"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "afterKeyguardGone"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ignoreKeyguardState"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-interface {v0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStartSubscreenBiometric(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public final updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 5

    const-string v0, "SubscreenSubRoomNotification"

    if-eqz p1, :cond_0

    const-class v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "updateNotificationState -  Filter out notification"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "updateNotificationState -  action = "

    const-string v2, " list size = "

    invoke-static {p2, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    if-eq p2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_2
    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateNotificationState - mIsInNotiRoom = "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isOngoing = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " importance = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isGroupSummary = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    if-nez p2, :cond_5

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isShowSilentNotificationOnLockscreen()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p2

    if-lt p2, v3, :cond_5

    goto :goto_0

    :cond_4
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result p2

    const/4 v3, 0x3

    if-lt p2, v3, :cond_5

    :goto_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string/jumbo p2, "updateNotificationState - key is added"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    if-eq p1, p2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "hasUnread"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    invoke-interface {p2, v1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_6
    const-string/jumbo p2, "updateNotificationState - prevHasUnreadNoti = "

    const-string v1, " mHasUnreadNoti = "

    invoke-static {p2, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateNotificationState - mUnreadNotificationList = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
