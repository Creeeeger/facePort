.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;
.super Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinatorKt;->access$getDEBUG()Z

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->access$getMMainHandler$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)Landroid/os/Handler;

    move-result-object p1

    const-string v1, "SubscreenQuickReplyCoordinator"

    const-string v2, "SubscreenQuickReply"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public queryShouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsGhost:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->getMIsFolded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   should extend lifetime - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v1, "SubscreenQuickReplyCoordinator"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method
