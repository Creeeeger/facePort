.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showBouncer(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    const/4 v1, 0x3

    iput v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mDetailAdapterItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-static {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$showReplyActivity(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method
