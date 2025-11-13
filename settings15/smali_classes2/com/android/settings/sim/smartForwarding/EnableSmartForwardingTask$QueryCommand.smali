.class public abstract Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final subId:I

.field public final tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->subId:I

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->tm:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[SubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;->subId:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
