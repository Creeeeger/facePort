.class public final Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    iput-object p2, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;

    iget-object v2, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;->TAG:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to unregister receiver : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unreigster receiver : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    return-void
.end method
