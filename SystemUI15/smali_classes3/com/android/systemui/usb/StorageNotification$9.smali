.class public final Lcom/android/systemui/usb/StorageNotification$9;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mUserReceiver ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-gez p2, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iput p2, p1, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Update mCurrentUserId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget p2, p2, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    invoke-static {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification;->mMountedVolumes:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget v2, v2, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mMountedVolumes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p2

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification;->mNotifyingVolumes:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget v2, v2, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/usb/StorageNotification;->getTagForVolumeInfo(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mNotifyingVolumes:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$9;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x53505542

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p2, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const-string v1, "cancelAsUser: User switched, tag="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method
