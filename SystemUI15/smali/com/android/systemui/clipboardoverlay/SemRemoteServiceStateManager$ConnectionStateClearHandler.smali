.class public final Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;->this$0:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionStateClearHandler received unknown message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemRemoteServiceStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->remoteServiceKeySet:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;->this$0:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->remoteServiceKeySet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.systemui.clipboard.UPDATE_CONNECTION_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mBoardcasteSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
