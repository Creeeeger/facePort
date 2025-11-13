.class public final Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;
.super Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final channel:Landroid/app/NotificationChannel;

.field public final modificationType:I

.field public final pkgName:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 2

    const-string v0, "onNotificationChannelModified"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->channel:Landroid/app/NotificationChannel;

    iput p4, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->modificationType:I

    return-void
.end method


# virtual methods
.method public final dispatchToListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->channel:Landroid/app/NotificationChannel;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->modificationType:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->pkgName:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->pkgName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->user:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->user:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->channel:Landroid/app/NotificationChannel;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->channel:Landroid/app/NotificationChannel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->modificationType:I

    iget p1, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->modificationType:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->channel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->modificationType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->channel:Landroid/app/NotificationChannel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChannelChangedEvent(pkgName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", channel="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", modificationType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/ChannelChangedEvent;->modificationType:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
