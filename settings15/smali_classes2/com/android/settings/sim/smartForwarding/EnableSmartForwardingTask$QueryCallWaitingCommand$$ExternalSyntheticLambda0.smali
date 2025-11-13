.class public final synthetic Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallWaitingCommand;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateCallWaitingCommand updateStatusCallBack result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartForwarding"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallWaitingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateCallForwardingCommand updateStatusCallBack : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartForwarding"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    :goto_2
    return-void

    :pswitch_1
    check-cast p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;->result:I

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    :goto_3
    const-string v0, "Call Waiting result: "

    const-string v1, "SmartForwarding"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
