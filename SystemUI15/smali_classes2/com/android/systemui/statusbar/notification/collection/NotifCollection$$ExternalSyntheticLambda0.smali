.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onInternalNotificationUpdate(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda9;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-direct {v1, v0, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
