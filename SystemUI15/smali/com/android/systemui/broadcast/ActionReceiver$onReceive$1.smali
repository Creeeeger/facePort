.class public final Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $id:I

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/broadcast/ActionReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/ActionReceiver;Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    iput-object p2, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v6, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->this$0:Lcom/android/systemui/broadcast/ActionReceiver;

    iget-object v0, v6, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$context:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1;->$id:I

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/broadcast/ReceiverData;

    iget-object v0, v1, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v6, Lcom/android/systemui/broadcast/ActionReceiver;->testPendingRemovalAction:Lkotlin/jvm/functions/Function2;

    iget-object v2, v1, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    iget v3, v6, Lcom/android/systemui/broadcast/ActionReceiver;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v10, v1, Lcom/android/systemui/broadcast/ReceiverData;->executor:Ljava/util/concurrent/Executor;

    new-instance v11, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;

    move-object v0, v11

    move-object v2, v6

    move-object v3, v8

    move-object v4, v7

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/broadcast/ActionReceiver$onReceive$1$1$1;-><init>(Lcom/android/systemui/broadcast/ReceiverData;Lcom/android/systemui/broadcast/ActionReceiver;Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
