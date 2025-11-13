.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$5;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;->f$2:I

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$5;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    iget-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    iget-object v5, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-interface {v3, v1, v4, p0}, Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
