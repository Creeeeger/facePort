.class public final Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;
.super Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    const-string v0, "onEntryBind"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final dispatchToListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BindEntryEvent(entry="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", sbn="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
