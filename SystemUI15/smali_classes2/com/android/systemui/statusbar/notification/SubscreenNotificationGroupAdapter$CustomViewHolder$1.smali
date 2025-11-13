.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clickAdapterItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$CustomViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->animateClickNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Z)V

    :goto_0
    return-void
.end method
