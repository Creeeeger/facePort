.class Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INSIGNIFICANT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetTAG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEntryAdded :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->semFlags:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " updateSummary entrySize:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    return-void
.end method

.method public bridge synthetic onEntryBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEntryInit(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetDEBUG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetTAG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEntryRemoved :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->semFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entrySize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "INSIGNIFICANT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INSIGNIFICANT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetTAG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEntryUpdated :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->semFlags:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " updateSummary entrySize:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public bridge synthetic onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRankingApplied()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
