.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideGroupNotification()V

    return-void
.end method
