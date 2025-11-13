.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/NotificationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->reportNotificationCountChanged()V

    return-void
.end method
