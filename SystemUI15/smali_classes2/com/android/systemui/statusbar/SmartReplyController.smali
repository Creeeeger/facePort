.class public final Lcom/android/systemui/statusbar/SmartReplyController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mCallback:Lcom/android/systemui/statusbar/SmartReplyController$Callback;

.field public final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field public final mSendingKeys:Ljava/util/Set;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/NotificationClickNotifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iput-object p2, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    invoke-virtual {p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mSendingKeys: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, " * "

    invoke-static {p1, v0, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final smartActionClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;

    iget-object v9, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v9

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$1;-><init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$2;

    invoke-direct {p3, p0, v9}, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationActionClick$2;-><init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v3, "actions"

    const-string v4, "app"

    const-string v0, "QPN001"

    const-string v1, "QPNE0011"

    const-string/jumbo v2, "type"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final stopSending(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
