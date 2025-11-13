.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODBaseManager;


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract lockscreenNotificationTypeChanged(I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract removeNotification(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V
.end method

.method public abstract setTagId(II)V
.end method

.method public abstract subLauncherUpdateNotification(Ljava/util/ArrayList;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateActiveNotifications(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract updateNotification(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateVisibleNotifications(Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation
.end method
