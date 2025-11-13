.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->BUBBLES_SETTING_URI:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v3, v1, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;ILjava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
