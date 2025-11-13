.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/StorageBroadcastHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastHandler$1;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
