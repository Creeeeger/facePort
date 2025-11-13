.class public final Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/icon/IconManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->sensitivityListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onEntryInit(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager;->sensitivityListener:Lcom/android/systemui/statusbar/notification/icon/IconManager$sensitivityListener$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRankingApplied()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager$entryListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/IconManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->recalculateForImportantConversationChange()V

    return-void
.end method
