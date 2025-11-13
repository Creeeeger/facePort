.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "SubscreenNotificationDetailAdapter"

    const-string v0, "Click call back button"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mCallbackClicked:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSemanticCallPendingIntent:Landroid/app/PendingIntent;

    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isRunOnCoverAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "runOnCover"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "afterKeyguardGone"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ignoreKeyguardState"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2, p1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_0
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotification()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v2, p0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string p0, "QPN102"

    const-string p1, "QPNE0208"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
