.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wmshell/BubblesManager;

    iget-object v1, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/16 v4, 0xc

    if-ltz p1, :cond_0

    iget-object p0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    iget-object v9, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v7

    invoke-direct {v8, v3, v2, v7}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-interface {v5, v6, v8, v4}, Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;

    new-instance v5, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    iget-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    invoke-virtual {v6, p0}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v6

    invoke-direct {v5, v3, v2, v6}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-interface {v1, p0, v5, v4}, Lcom/android/systemui/wmshell/BubblesManager$NotifCallback;->removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    goto :goto_1

    :cond_1
    return-void
.end method
