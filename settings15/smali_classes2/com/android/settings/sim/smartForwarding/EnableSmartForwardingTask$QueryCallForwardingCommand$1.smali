.class public final Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand$1;->this$0:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    return-void
.end method


# virtual methods
.method public final onCallForwardingInfoAvailable(Landroid/telephony/CallForwardingInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call Forwarding result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartForwarding"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand$1;->this$0:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;->result:Landroid/telephony/CallForwardingInfo;

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onError(I)V
    .locals 1

    const-string p1, "SmartForwarding"

    const-string v0, "Query Call Forwarding failed."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand$1;->this$0:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;->resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
