.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSvoiceEmojiClicked:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    if-eqz p1, :cond_0

    const-string p1, "SubscreenNotificationDetailAdapter"

    const-string v0, "Click ReplyEmojiButton"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->startReplyActivity(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_0
    const-string p0, "QPN102"

    const-string p1, "QPNE0206"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
