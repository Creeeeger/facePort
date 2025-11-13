.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic $isExpanded:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;->$isExpanded:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onEntryViewBound$1$1;->$isExpanded:Z

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onEntryViewBound$updateCount(ZLcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
