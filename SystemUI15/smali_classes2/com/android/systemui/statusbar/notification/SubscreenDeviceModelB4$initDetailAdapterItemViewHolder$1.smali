.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    if-eqz p1, :cond_0

    const-string p1, "SubscreenNotificationDetailAdapter"

    const-string v0, "Click ReplyButton"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-virtual {v0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->startWaitState(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    const-string p1, "QPN102"

    const-string v0, "QPNE0203"

    const-string v1, "app"

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
