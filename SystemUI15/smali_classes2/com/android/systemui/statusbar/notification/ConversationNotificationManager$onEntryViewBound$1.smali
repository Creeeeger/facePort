.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpansionChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v2, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;-><init>(ZLcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    iget p0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result p1

    if-ne p0, p1, :cond_1

    iget-object p0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mOnIntrinsicHeightReachedRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-static {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onEntryViewBound$updateCount(ZLcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    :goto_0
    return-void
.end method
