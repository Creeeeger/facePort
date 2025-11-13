.class public final Lcom/android/systemui/usb/StorageNotification$6;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mEmergencyModeReceiver ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "reason"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification;->mNotifyingVolumes:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/VolumeInfo;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/usb/StorageNotification;->getTagForVolumeInfo(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mNotifyingVolumes:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v1, v1, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x53505542

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p2, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const-string v1, "cancelAsUser: Emergency Mode enabled, tag="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification;->mNotifyingVolumes:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification;->mMountedVolumes:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget v1, v1, Lcom/android/systemui/usb/StorageNotification;->mCurrentUserId:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$6;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-virtual {v0, p2}, Lcom/android/systemui/usb/StorageNotification;->onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_1

    :cond_2
    return-void
.end method
