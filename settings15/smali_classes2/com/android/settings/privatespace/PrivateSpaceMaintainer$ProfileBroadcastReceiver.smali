.class public final Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;


# direct methods
.method public constructor <init>(Lcom/android/settings/privatespace/PrivateSpaceMaintainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;->this$0:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.extra.USER"

    const-class v0, Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.PROFILE_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;->this$0:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-static {p1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->-$$Nest$mremoveSettingsAllTasks(Lcom/android/settings/privatespace/PrivateSpaceMaintainer;)V

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;->this$0:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mProfileBroadcastReceiver:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;

    if-nez p1, :cond_1

    const-string p1, "PrivateSpaceMaintainer"

    const-string p2, "Requested to unregister when there is no receiver."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    const-string p2, "PrivateSpaceMaintainer"

    const-string v0, "Unregistering the receiver"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;->this$0:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    iget-object p2, p2, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mProfileBroadcastReceiver:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    monitor-exit p0

    throw p1

    :cond_3
    iget-object p2, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;->this$0:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {p2}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getPrivateProfileHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p0, "PrivateSpaceMaintainer"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring intent for non-private profile with user id "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p1, "PrivateSpaceMaintainer"

    const-string p2, "Removing all Settings tasks."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;->this$0:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-static {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->-$$Nest$mremoveSettingsAllTasks(Lcom/android/settings/privatespace/PrivateSpaceMaintainer;)V

    return-void
.end method
