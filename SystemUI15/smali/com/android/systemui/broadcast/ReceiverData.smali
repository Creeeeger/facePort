.class public final Lcom/android/systemui/broadcast/ReceiverData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final filter:Landroid/content/IntentFilter;

.field public final permission:Ljava/lang/String;

.field public final receiver:Landroid/content/BroadcastReceiver;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/android/systemui/broadcast/ReceiverData;->executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/android/systemui/broadcast/ReceiverData;->permission:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/broadcast/ReceiverData;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/broadcast/ReceiverData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/broadcast/ReceiverData;

    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p1, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    iget-object v3, p1, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Lcom/android/systemui/broadcast/ReceiverData;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/broadcast/ReceiverData;->permission:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/broadcast/ReceiverData;->permission:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/broadcast/ReceiverData;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/systemui/broadcast/ReceiverData;->permission:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/systemui/broadcast/ReceiverData;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ReceiverData(receiver="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", filter="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", executor="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", user="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", permission="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/broadcast/ReceiverData;->permission:Ljava/lang/String;

    const-string v0, ")"

    invoke-static {v4, p0, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
