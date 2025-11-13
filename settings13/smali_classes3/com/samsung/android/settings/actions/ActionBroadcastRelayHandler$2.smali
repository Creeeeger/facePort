.class Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;
.super Landroid/os/Handler;
.source "ActionBroadcastRelayHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;Landroid/os/Looper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;->this$0:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p1, p0, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 106
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
