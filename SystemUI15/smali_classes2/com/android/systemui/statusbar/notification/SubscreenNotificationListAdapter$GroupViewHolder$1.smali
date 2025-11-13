.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder$1;->this$1:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GroupViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->animateClickNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Z)V

    return-void
.end method
