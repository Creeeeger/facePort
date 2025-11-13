.class public final synthetic Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$1:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    iput p4, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$1:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$3:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-interface {v3, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
