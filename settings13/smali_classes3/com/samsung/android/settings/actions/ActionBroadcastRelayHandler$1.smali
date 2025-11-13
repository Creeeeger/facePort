.class Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;
.super Ljava/lang/Object;
.source "ActionBroadcastRelayHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->clearAndRegisterExpireMessage(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    iput-object p2, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    invoke-static {v0}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->-$$Nest$fgetmRelays(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    invoke-static {v0}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->-$$Nest$fgetmRelays(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;)Landroid/util/ArrayMap;

    move-result-object v0

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

    .line 85
    iget-object v2, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;->unregister(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    invoke-static {p0}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->-$$Nest$fgetmRelays(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    return-void
.end method
