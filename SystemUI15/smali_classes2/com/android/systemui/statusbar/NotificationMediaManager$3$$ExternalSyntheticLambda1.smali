.class public final synthetic Lcom/android/systemui/statusbar/NotificationMediaManager$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/NotificationMediaManager$3;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    return-void
.end method
