.class public final Lcom/android/systemui/subscreen/SubScreenManager$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$6;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$6;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, "onEntryAdded() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onEntryAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    :goto_0
    return-void
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$6;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, "onEntryRemoved() no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onEntryRemoved(Landroid/service/notification/StatusBarNotification;I)V

    :goto_0
    return-void
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$6;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string p1, " onEntryUpdated () no plugin"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onEntryUpdated(Landroid/service/notification/StatusBarNotification;)V

    :goto_0
    return-void
.end method
