.class public final Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic $row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/16 v1, 0x8

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method
