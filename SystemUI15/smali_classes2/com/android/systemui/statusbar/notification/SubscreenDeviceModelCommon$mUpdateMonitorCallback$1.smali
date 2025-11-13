.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->hideDetailNotificationIfCallback()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    if-ge p3, p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v1

    if-ne v1, p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v1, :cond_2

    instance-of v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    xor-int/2addr v2, p2

    add-int/2addr v2, p3

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getSubscreenNotificationInfoListSize()I

    move-result p1

    goto :goto_3

    :cond_4
    move p1, p3

    :goto_3
    if-ge p3, p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSubscreenNotificationInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v1

    if-ne v1, p2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->showUnlockIconAnim()V

    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->updateShowNotificationTip()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateNotiShowBlocked()V

    return-void
.end method
